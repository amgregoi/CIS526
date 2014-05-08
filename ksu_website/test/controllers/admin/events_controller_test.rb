require 'test_helper'

class Admin::EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
	# Sign in as admin so tests have access to pages
	@admin_user = User.create ({ email: "adminuser@email.com", password: "adminpassword", admin: true })
	session[:user_id] = @admin_user.id
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { description: @event.description, event_date: @event.event_date, location: @event.location, title: @event.title }
    end

    assert_redirected_to admin_event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    patch :update, id: @event, event: { description: @event.description, event_date: @event.event_date, location: @event.location, title: @event.title }
    assert_redirected_to admin_event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to admin_events_path
  end
end
