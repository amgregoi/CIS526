require 'test_helper'

# There should only be the index route for non-admin controller
class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should not get new" do
    assert_raises(ActionController::UrlGenerationError) do
      get :new
    end
  end

  test "should not create course" do
    assert_raises(ActionController::UrlGenerationError) do
      post :create, course: { course_number: 999, credits: @course.credits, department: @course.department, description: @course.description, title: @course.title }
    end
  end

  test "should not show course" do
    assert_raises(ActionController::UrlGenerationError) do
      get :show, id: @course   
    end
  end

  test "should not get edit" do
    assert_raises(ActionController::UrlGenerationError) do
      get :edit, id: @course   
    end
  end

  test "should not update course" do
    assert_raises(ActionController::UrlGenerationError) do
      patch :update, id: @course, course: { course_number: @course.course_number, credits: @course.credits, department: @course.department, description: @course.description, title: @course.title }  
    end
  end

  test "should not destroy course" do
    assert_raises(ActionController::UrlGenerationError) do
      delete :destroy, id: @course    
    end
  end
  
end
