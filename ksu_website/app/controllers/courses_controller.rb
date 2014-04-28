class CoursesController < ApplicationController
  #before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.filter(search_params.slice(:keywords, :department, :course_num))
  end

  private
	# Gets trusted parameters for search form
	def search_params
	  params.permit(:keywords, :department, :course_num)
	end
end
