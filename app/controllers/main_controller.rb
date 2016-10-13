class MainController < ApplicationController
  def home
    if user_signed_in?
      redirect_to dashboard_path
    end
  end

  def dashboard
    if !user_signed_in?
      redirect_to root_path
    end
    @seats = Seat.where(user_id: current_user.id)
  end
end
