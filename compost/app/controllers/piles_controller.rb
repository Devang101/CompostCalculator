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
    @pile = Pile.find(params[:id])
    if @pile.update_attributes(pile_params)
      # Handle a successful update.
    else
      render 'add'
    end
  end
  	private

    def pile_params
      params.require(:pile).permit(:content)
    end

    def correct_user
      @pile = current_user.piles.find_by(id: params[:id])
      redirect_to root_url if @pile.nil?
    end
end
