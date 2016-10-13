class SeatsController < ApplicationController
  def index
  end
  def new
    @course = Course.find(params[:course_id])
    @seat = Seat.new

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
  private
  def seat_params
    params.require(:seat).permit(:course_id, :user_id)
  end
end
