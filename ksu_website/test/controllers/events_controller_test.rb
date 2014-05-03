require 'test_helper'

# There should only be the index route for non-admin controller
class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should not get new" do
    assert_raises(ActionController::UrlGenerationError) do
      get :new
    end
  end

  test "should not create event" do
    assert_raises(ActionController::UrlGenerationError) do
      post :create, event: { description: @event.description, event_date: @event.event_date, location: @event.location, title: @event.title }
    end
  end

  test "should not show event" do
    assert_raises(ActionController::UrlGenerationError) do
      get :show, id: @event
    end
  end

  test "should not get edit" do
    assert_raises(ActionController::UrlGenerationError) do
      get :edit, id: @event
    end
  end

  test "should not update event" do
    assert_raises(ActionController::UrlGenerationError) do
      patch :update, id: @event, event: { description: @event.description, event_date: @event.event_date, location: @event.location, title: @event.title }
    end
  end

  test "should not destroy event" do
    assert_raises(ActionController::UrlGenerationError) do
      delete :destroy, id: @event
    end
  end
  
end
