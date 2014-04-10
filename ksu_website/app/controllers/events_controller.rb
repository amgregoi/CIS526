class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @date_select = Date.today  # Initialize to today (for when sort form hasn't been used yet) 
  
    sort_select = sort_params
	@date_select = sort_select[0]
	@free_food_select = sort_select[1]
	
	# Show by chosen month/year (defaults to current month/year)
	time_range = DateTime.new(@date_select.year,@date_select.month,1)..(DateTime.new(@date_select.year,@date_select.month,1) + 1.month)
	@events = Event.where( 'event_date' => time_range )
	
	# Show by whether free food is chosen
	if (@free_food_select === 1)
	  @events = @events.where( free_food: true)
	end
	
	# Still not sure why this doesn't work; left here for later investigation
    #@events = Event.where("strftime('%Y', event_date) = ? AND strftime('%m', event_date) + 0 = ?", @date_select.year, @date_select.month)
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event }
      else
        format.html { render action: 'new' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :event_date, :location, :description, :free_food)
    end
	
	# Gets trusted parameters for sort, returning array with sort date
	# and if free food selected (1 if selected, 0 otherwise)
	def sort_params
	  if(params[:chosen_date])
	    choice = params[:chosen_date]
		[ Date.new(choice["date(1i)"].to_i, choice["date(2i)"].to_i, 1), params[:free_food].to_i ]
	  else
	    [ Date.today, 0 ]
	  end
	end
end
