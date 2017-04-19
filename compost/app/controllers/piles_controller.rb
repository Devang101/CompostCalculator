class PilesController < ApplicationController

	before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy
	def create
		@pile = current_user.piles.build(pile_params)
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
		# @pile = Pile.find_by("id = ? AND user_id = ?", params[:pile][:pile_id], params[:pile][:user_id])
		# newRatio = 0
		# if(params[:pile][:content] == "Fruit waste")
		# 	# if @pile.CN_ratio == nil
		# 	# 	currentCN = 0
		# 	# else
		# 	currentCN = @pile.CN_ratio
		# 	# end
		# 	currentVol = @pile.volume
		# 	currentC = currentCN * currentVol
		# 	currentN = currentVol - currentC
		# 	newRatio = (currentC + 35.0) / (currentN + 1.0)
		# end
		#
		# if pile.save
		# 	flash[:success] = "Updated CN Ratio!"
		# 	redirect_to({:controller => 'piles', :action => 'stats', :user_id => params[:pile][:user_id], :pile_id => params[:pile][:pile_id]})
		# else
		# 	redirect_to(root_url)
		# end
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
      params.require(:pile).permit(:content, :volume, :user_id, :pile_id)
    end

    def correct_user
      @pile = current_user.piles.find_by(id: params[:id])
      redirect_to root_url if @pile.nil?
    end
end
