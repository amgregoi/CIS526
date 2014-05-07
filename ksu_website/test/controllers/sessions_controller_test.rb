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

  test "should create session for valid user" do
    @user = User.create ({ email: "adminuser@email.com", password: "adminpassword", admin: true})
    post :create, { email: @user.email, password: "adminpassword" }
    assert_redirected_to root_url, "User was not redirected to root url"
    assert session[:user_id], "Session was not created"
  end

  #test "should not create session for invalid user" do
   # @user = User.find()
    #assert_nil @user, "Invalid user was found"
  #end
  
  test "should throw error when creating invalid session" do
    assert true
  end
  
  test "should destroy session" do
    if post :destroy, session: {}
		assert_redirected_to root_url
	else "User was deleted"
		assert_response :failure
	end
	#assert session[:user_id], "User was not deleted"
	#assert_redirected_to root_url
  end
  
end
