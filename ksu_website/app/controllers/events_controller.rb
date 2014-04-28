class EventsController < ApplicationController
  #before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
	@events = Event.filter(search_params.slice(:title_keywords, :chosen_date, :free_food_select))
  end

  private
	# Gets trusted parameters for search form
	def search_params
	  new_date = Date.today  # Default value
	  if(params[:chosen_date])
	    choice = params[:chosen_date]
	    new_date = Date.new(choice["date(1i)"].to_i, choice["date(2i)"].to_i, 1)
	  end
	  
	  { title_keywords: params[:title_keywords], chosen_date: new_date, free_food_select: params[:free_food_select] } 
	end
end