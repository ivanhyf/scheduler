class CoursesController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user, only: :destroy

  def index
  end

  def create
    @course = current_user.courses.build(course_params)
    if @course.save
      flash[:success] = "Course added!"
      redirect_to scheduler_home_path
    else
      render 'scheduler/home'  #What is that??????
    end
  end

  def destroy
    @course.destroy
    redirect_to scheduler_home_path
  end


  private

  def course_params
    params.require(:course).permit(:name)
  end

  def correct_user
    @course = current_user.courses.find_by(id: params[:id])
    redirect_to scheduler_home_path if @course.nil?
  end
end
