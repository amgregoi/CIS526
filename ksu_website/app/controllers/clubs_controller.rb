class ClubsController < ApplicationController
  #before_action :set_club, only: [:show, :edit, :update, :destroy]
  
  # GET /clubs
  # GET /clubs.json
  def index
    @clubs = Club.filter(search_params.slice(:name_keywords))
  end
 
  private
	# Gets trusted parameters for search form
	def search_params
	  params.permit(:name_keywords)
	end
end
