require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end
  
  # Admins can only be created from the admin panel
  test "admin should not be created" do
    post :create, user: ({ email: "test", password: "test", admin: true })
	assert_not assigns(:user).is_admin?	
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { email: "test", password: "test"  }
    end

    assert_redirected_to root_url
  end
  
end
