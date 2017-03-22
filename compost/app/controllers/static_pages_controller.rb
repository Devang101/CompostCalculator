class StaticPagesController < ApplicationController
  def home
    @pile = current_user.piles.build if logged_in?
  end

  def about
  end

  def help
  end

  def contact
  end
end
