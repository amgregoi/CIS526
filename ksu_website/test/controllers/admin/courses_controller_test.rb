require 'test_helper'

class Admin::CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
	# Sign in as admin so tests have access to pages
    @admin_user = User.create ({ email: "adminuser@email.com", password: "adminpassword", admin: true })
	session[:user_id] = @admin_user.id
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, course: { course_number: 999, credits: @course.credits, department: @course.department, description: @course.description, title: @course.title }
    end

    assert_redirected_to admin_course_path(assigns(:course))
  end

  test "should show course" do
    get :show, id: @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course
    assert_response :success
  end

  test "should update course" do
    patch :update, id: @course, course: { course_number: @course.course_number, credits: @course.credits, department: @course.department, description: @course.description, title: @course.title }
    assert_redirected_to admin_course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to admin_courses_path
  end
end
