<<<<<<< HEAD
require 'test_helper'

class Admin::DashboardControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
=======
require 'test_helper'

class Admin::DashboardControllerTest < ActionController::TestCase
  setup do
	# Sign in as admin so tests have access to pages
    @admin_user = User.create ({ email: "adminuser@email.com", password: "adminpassword", admin: true })
	session[:user_id] = @admin_user.id
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
>>>>>>> 9d29c98f57f0dc4deae1e43e05d156b6d31d155b
