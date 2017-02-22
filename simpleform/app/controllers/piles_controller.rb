class PilesController < ApplicationController
	def new
		@pile = Pile.new
		@piles = Pile.all


	end

	def create
		@pile = Pile.new(pile_params)
		if @pile.save
			redirect_to new_pile_path
		end
	end

	private

	def pile_params
		params.require(:pile).permit(:pilematerial, :pilevolume)
	end
end
