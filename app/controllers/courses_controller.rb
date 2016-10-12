class CoursesController < ApplicationController
  def index
  end
  def new
  end
  def edit
  end
  def show
    @course = Course.find(params[:id])
  end
  def update
  end
  def delete
  end
end
