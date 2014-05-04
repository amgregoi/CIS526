require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  setup do
	# Sign in as admin so tests have access to pages
	#@user = User.create ({ email: "adminuser@email.com", password: "adminpassword", admin: true })
	#post :create, session: { email: @admin_user.email, password: "adminpassword" }
  end
  
  teardown do
    #delete :destroy, id: @admin_user
    #@admin_user = nil
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create session" do
    @user = User.create ({ email: "adminuser@email.com", password: "adminpassword", admin: true })
	post :create, session: { email: @user.email, password: "adminpassword" }
    assert session[:user_id], "Session wasn't created"
    assert_redirected_to root_url
  end
  
  test "should throw error when creating invalid session" do
    assert false
  end
  
  test "should destroy session" do
    assert false
  end
  
end
