require 'test_helper'

class FUsersControllerTest < ActionController::TestCase
  setup do
    @f_user = f_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:f_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create f_user" do
    assert_difference('FUser.count') do
      post :create, f_user: { birthday: @f_user.birthday, education: @f_user.education, hobbies: @f_user.hobbies, name: @f_user.name, rela_status: @f_user.rela_status }
    end

    assert_redirected_to f_user_path(assigns(:f_user))
  end

  test "should show f_user" do
    get :show, id: @f_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @f_user
    assert_response :success
  end

  test "should update f_user" do
    put :update, id: @f_user, f_user: { birthday: @f_user.birthday, education: @f_user.education, hobbies: @f_user.hobbies, name: @f_user.name, rela_status: @f_user.rela_status }
    assert_redirected_to f_user_path(assigns(:f_user))
  end

  test "should destroy f_user" do
    assert_difference('FUser.count', -1) do
      delete :destroy, id: @f_user
    end

    assert_redirected_to f_users_path
  end
end
