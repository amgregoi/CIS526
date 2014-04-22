require 'test_helper'

class FacultiesControllerTest < ActionController::TestCase
  setup do
    @faculty = faculties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:faculties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create faculty" do
    assert_difference('Faculty.count') do
      post :create, faculty: { email: @faculty.email, name: @faculty.name, office: @faculty.office, phone_number: @faculty.phone_number, title: @faculty.title }
    end

    assert_redirected_to faculty_path(assigns(:faculty))
  end

  test "should show faculty" do
    get :show, id: @faculty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @faculty
    assert_response :success
  end

  test "should update faculty" do
    patch :update, id: @faculty, faculty: { email: @faculty.email, name: @faculty.name, office: @faculty.office, phone_number: @faculty.phone_number, title: @faculty.title }
    assert_redirected_to faculty_path(assigns(:faculty))
  end

  test "should destroy faculty" do
    assert_difference('Faculty.count', -1) do
      delete :destroy, id: @faculty
    end

    assert_redirected_to faculties_path
  end
end
