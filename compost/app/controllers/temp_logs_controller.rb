class TempLogsController < ApplicationController
  def new
    @TempLog = TempLog.new
  end

  def create
    @TempLog = TempLog.new(temp_log_params)
    if @TempLog.save
      flash[:success] = "Updated Temperature!"
      redirect_to({:controller => 'piles', :action => 'stats', :user_id => params[:temp_log][:user_id], :pile_id => params[:temp_log][:pile_id]})
    else
      redirect_to(root_url)
    end
  end

  private

  def temp_log_params
    params.require(:temp_log).permit(:user_id, :pile_id, :temperature)
  end

end
