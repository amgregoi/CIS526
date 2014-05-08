require 'test_helper'

# There should only be the index route for non-admin controller
class FacultiesControllerTest < ActionController::TestCase
  setup do
    @faculty = faculties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:faculties)
  end

  test "should not get new" do
    assert_raises(ActionController::UrlGenerationError) do
      get :new
    end
  end

  test "should not create faculty" do
    assert_raises(ActionController::UrlGenerationError) do
      post :create, faculty: { email: @faculty.email, name: @faculty.name + "unique", office: @faculty.office, phone_number: @faculty.phone_number, title: @faculty.title }
    end
  end

  test "should not show faculty" do
    assert_raises(ActionController::UrlGenerationError) do
      get :show, id: @faculty
    end
  end

  test "should not get edit" do
    assert_raises(ActionController::UrlGenerationError) do
      get :edit, id: @faculty
    end
  end

  test "should not update faculty" do
    assert_raises(ActionController::UrlGenerationError) do
      patch :update, id: @faculty, faculty: { email: @faculty.email, name: @faculty.name + "unique", office: @faculty.office, phone_number: @faculty.phone_number, title: @faculty.title }
    end
  end

  test "should not destroy faculty" do
    assert_raises(ActionController::UrlGenerationError) do
      delete :destroy, id: @faculty
    end
  end
  
end
