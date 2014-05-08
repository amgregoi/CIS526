<<<<<<< HEAD
require 'test_helper'

class Admin::EmploymentsControllerTest < ActionController::TestCase
  setup do
    @employment = employments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employment" do
    assert_difference('Employment.count') do
      post :create, employment: { description: @employment.description, employer: @employment.employer, title: @employment.title, job_type: @employment.job_type }
    end

    assert_redirected_to admin_employment_path(assigns(:employment))
  end

  test "should show employment" do
    get :show, id: @employment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employment
    assert_response :success
  end

  test "should update employment" do
    patch :update, id: @employment, employment: { description: @employment.description, employer: @employment.employer, title: @employment.title, job_type: @employment.job_type }
    assert_redirected_to admin_employment_path(assigns(:employment))
  end

  test "should destroy employment" do
    assert_difference('Employment.count', -1) do
      delete :destroy, id: @employment
    end

    assert_redirected_to admin_employments_path
  end
end
=======
require 'test_helper'

class Admin::EmploymentsControllerTest < ActionController::TestCase
  setup do
    @employment = employments(:one)
	# Sign in as admin so tests have access to pages
	@admin_user = User.create ({ email: "adminuser@email.com", password: "adminpassword", admin: true })
	session[:user_id] = @admin_user.id
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employment" do
    assert_difference('Employment.count') do
      post :create, employment: { description: @employment.description, employer: @employment.employer, title: @employment.title, job_type: @employment.job_type }
    end

    assert_redirected_to admin_employment_path(assigns(:employment))
  end

  test "should show employment" do
    get :show, id: @employment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employment
    assert_response :success
  end

  test "should update employment" do
    patch :update, id: @employment, employment: { description: @employment.description, employer: @employment.employer, title: @employment.title, job_type: @employment.job_type }
    assert_redirected_to admin_employment_path(assigns(:employment))
  end

  test "should destroy employment" do
    assert_difference('Employment.count', -1) do
      delete :destroy, id: @employment
    end

    assert_redirected_to admin_employments_path
  end
end
>>>>>>> 9d29c98f57f0dc4deae1e43e05d156b6d31d155b
