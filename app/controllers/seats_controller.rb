class SeatsController < ApplicationController
  before_action :find_seat, except: [:index, :create, :new]

  def index
  end
  def new
    @course = Course.find(params[:course_id])
    @seat = Seat.new

    @subscription = Payola::Subscription.where(owner_id: current_user.id, state: "active")

    @sections = Section.where(course_id: @course.id).order(:order)
    @lessons = Lesson.where(course_id: @course.id)
  end
  def create
    @seat = Seat.new(seat_params)
    if @seat.save
      redirect_to course_path(@seat.course_id)
    else
      render 'new'
    end
  end
  def destroy
		@seat.destroy
		redirect_to dashboard_path
  end
  private
  def seat_params
    params.require(:seat).permit(:course_id, :user_id)
  end
  def find_seat
    @seat = Seat.find(params[:id])
  end
end
