class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end
  def new
  end
  def edit
  end
  def show
    @course = Course.find(params[:id])
    @sections = Section.where(course_id: @course.id).order(:order)
    @lessons = Lesson.where(course_id: @course.id)
  end
  def update
  end
  def delete
  end
end
