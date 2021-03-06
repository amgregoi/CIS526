class CoursesController < ApplicationController
  #before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.order(:course_number).filter(search_params.slice(:department, :course_num, :keywords))
  end

  private
	# Gets trusted parameters for search form
	def search_params
	  params.permit(:keywords, :department, :course_num)
	end
end
