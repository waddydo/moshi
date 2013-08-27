require 'test_helper'

class UserScsControllerTest < ActionController::TestCase
  setup do
    @user_sc = user_scs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_scs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_sc" do
    assert_difference('UserSc.count') do
      post :create, user_sc: { date: @user_sc.date, name: @user_sc.name }
    end

    assert_redirected_to user_sc_path(assigns(:user_sc))
  end

  test "should show user_sc" do
    get :show, id: @user_sc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_sc
    assert_response :success
  end

  test "should update user_sc" do
    put :update, id: @user_sc, user_sc: { date: @user_sc.date, name: @user_sc.name }
    assert_redirected_to user_sc_path(assigns(:user_sc))
  end

  test "should destroy user_sc" do
    assert_difference('UserSc.count', -1) do
      delete :destroy, id: @user_sc
    end

    assert_redirected_to user_scs_path
  end
end
