class PilesController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy
	def create
		# @pile = current_user.piles.build(pile_params)
		@pile = Pile.new(:user_id => current_user.id, :name => params[:pile][:name])
		if @pile.save
			flash[:success] = "Pile created!"
      redirect_to root_url
    else
			render 'static_pages/home'
    end
  end

  def destroy
		@pile.destroy
    flash[:success] = "Pile deleted"
    redirect_to request.referrer || root_url
  end

  def index
		@piles = Pile.paginate(:page => params[:page], :per_page => 5)
  end

  def update
	@pile = Pile.find_by!("id = ? AND user_id = ?", params[:pile][:id], params[:pile][:user_id])
	newRatio = 0
	currentCN = @pile.read_attribute :CN_ratio
	currentN = @pile.read_attribute :volume
	inputVol = params[:pile][:volume].to_f

	if currentCN == nil
		currentCN = 0
	end
	if currentN == nil
		currentN = 0
	end
	currentC = currentCN * currentN
	newN = currentN + inputVol
	params[:pile][:volume] = newN

	if(params[:pile][:content] == "Fruit waste")
		newRatio = (currentC + 35.0 * inputVol) / newN
	elsif(params[:pile][:content] == "Leaves")
		newRatio = (currentC + 60.0 * inputVol) / newN
	elsif(params[:pile][:content] == "Wood chips")
		newRatio = (currentC + 400.0* inputVol) / newN
	elsif(params[:pile][:content] == "Straw")
		newRatio = (currentC + 75.0* inputVol) / newN
	elsif(params[:pile][:content] == "Coffee grounds")
		newRatio = (currentC + 20.0* inputVol) / newN
	elsif(params[:pile][:content] == "Food waste")
		newRatio = (currentC + 20.0* inputVol) / newN
	elsif(params[:pile][:content] == "Grass")
		newRatio = (currentC + 20.0* inputVol) / newN
	elsif(params[:pile][:content] == "Vegetable scraps")
		newRatio = (currentC + 25.0* inputVol) / newN
	end
	params[:pile][:CN_ratio] = newRatio

	if @pile.update_attributes(pile_params)
		flash[:success] = "Updated CN Ratio!"
		redirect_to({:controller => 'piles', :action => 'stats', :user_id => params[:pile][:user_id], :pile_id => params[:pile][:id]})
	else
		redirect_to(root_url)
	end

  end

	def show
		@pile = current_user.piles.find_by(id: params[:id])
		if @pile.nil?
			redirect_to root_url
		else
			redirect_to
		end
	end
  	private
    def pile_params
      params.require(:pile).permit(:content, :volume, :CN_ratio, :name)
    end

    def correct_user
      @pile = current_user.piles.find_by(id: params[:id])
      redirect_to root_url if @pile.nil?
    end
end
