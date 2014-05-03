require 'test_helper'

# There should only be the index route for non-admin controller
class ClubsControllerTest < ActionController::TestCase
  setup do
    @club = clubs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clubs)
  end

  test "should not have new route" do
    assert_raises(ActionController::UrlGenerationError) do
      get :new
    end
  end

  test "should not have create club route" do
    assert_raises(ActionController::UrlGenerationError) do
      post :create, club: { description: @club.description, meeting: @club.meeting, name: @club.name + "unique", url: @club.url }
    end
  end

  test "should not have show route" do
    assert_raises(ActionController::UrlGenerationError) do
      get :show, id: @club
    end
  end

  test "should not have edit route" do
    assert_raises(ActionController::UrlGenerationError) do
      get :edit, id: @club
    end
  end

  test "should not have update route" do
    assert_raises(ActionController::UrlGenerationError) do
       patch :update, id: @club, club: { description: @club.description, meeting: @club.meeting, name: @club.name, url: @club.url }
    end
  end

  test "should not destroy club" do
    assert_raises(ActionController::UrlGenerationError) do
       delete :destroy, id: @club
    end
  end
end
