require 'test_helper'

# There should only be the index route for non-admin controller
class EmploymentsControllerTest < ActionController::TestCase
  setup do
    @employment = employments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employments)
  end

  test "should not get new" do
    assert_raises(ActionController::UrlGenerationError) do
      get :new
    end
  end

  test "should not create employment" do
    assert_raises(ActionController::UrlGenerationError) do
      post :create, employment: { description: @employment.description, employer: @employment.employer, title: @employment.title, job_type: @employment.job_type }
    end
  end

  test "should not show employment" do
    assert_raises(ActionController::UrlGenerationError) do
      get :show, id: @employment
    end
  end

  test "should not get edit" do
    assert_raises(ActionController::UrlGenerationError) do
      get :edit, id: @employment
    end
  end

  test "should not update employment" do
    assert_raises(ActionController::UrlGenerationError) do
      patch :update, id: @employment, employment: { description: @employment.description, employer: @employment.employer, title: @employment.title, job_type: @employment.job_type }
    end
  end

  test "should not destroy employment" do
    assert_raises(ActionController::UrlGenerationError) do
      delete :destroy, id: @employment
    end
  end
  
end
