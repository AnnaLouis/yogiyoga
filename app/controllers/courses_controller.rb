class CoursesController < ApplicationController
  def index
    @Courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
    @course.user = current_user
  end

  def create
    @course = Course.new(course_params)
    @course.user = current_user
    if @course.save
      flash[:notice] = "C'est bien noté ;)"
      redirect_to course_path(@course)
    else
      flash[:alert] = "Aïe, cela n'a pas fonctionné."
      render :new
    end
  end

  def edit
  end

  def update
  end

  def delete
  end


private

  def course_params
    params.require(:course).permit(:name, :addres, :date, :price)
  end

end
