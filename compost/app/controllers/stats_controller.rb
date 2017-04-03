class StatsController < ApplicationController
  def create
    @pile = current_user.piles.find_by(id: params[:id])
  end 
end
