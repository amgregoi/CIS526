require 'test_helper'

class Admin::ClubsControllerTest < ActionController::TestCase
  setup do
    @club = clubs(:one)
	# Sign in as admin so tests have access to pages
    @admin_user = User.create ({ email: "adminuser@email.com", password: "adminpassword", admin: true })
	session[:user_id] = @admin_user.id
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clubs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create club" do
    assert_difference('Club.count') do
      post :create, club: { description: @club.description, meeting: @club.meeting, name: @club.name + "unique", url: @club.url }
    end

    assert_redirected_to admin_club_path(assigns(:club))
  end

  test "should show club" do
    get :show, id: @club
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @club
    assert_response :success
  end

  test "should update club" do
    patch :update, id: @club, club: { description: @club.description, meeting: @club.meeting, name: @club.name, url: @club.url }
    assert_redirected_to admin_club_path(assigns(:club))
  end

  test "should destroy club" do
    assert_difference('Club.count', -1) do
      delete :destroy, id: @club
    end

    assert_redirected_to admin_clubs_path
  end
end
