class CoursesController < ApplicationController
  before_action :set_course, only: %i[show update destroy]

  # GET /courses
  def index
    @courses = Course.all

    render json: @courses, only: %i[name instructor description]
  end

  # GET /courses/1
  def show
    render json: @course
  end

  # POST /courses
  def create
    @course = Course.new(course_params)

    if @course.save
      render json: @course, status: :created, location: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :instructor, :description)
  end
end
