class EmploymentsController < ApplicationController
  #before_action :set_employment, only: [:show, :edit, :update, :destroy]

  # GET /employments
  # GET /employments.json
  def index
    @employments = Employment.filter(search_params.slice(:title_keywords, :employer_keywords, :job_type_select))
  end

  private
	# Gets trusted parameters for search form
	def search_params
	  params.permit(:title_keywords, :employer_keywords, :job_type_select)
	end
end
