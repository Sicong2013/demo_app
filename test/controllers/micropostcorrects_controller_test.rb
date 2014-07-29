require 'test_helper'

class MicropostcorrectsControllerTest < ActionController::TestCase
  setup do
    @micropostcorrect = micropostcorrects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micropostcorrects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micropostcorrect" do
    assert_difference('Micropostcorrect.count') do
      post :create, micropostcorrect: { content: @micropostcorrect.content, user_id: @micropostcorrect.user_id }
    end

    assert_redirected_to micropostcorrect_path(assigns(:micropostcorrect))
  end

  test "should show micropostcorrect" do
    get :show, id: @micropostcorrect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micropostcorrect
    assert_response :success
  end

  test "should update micropostcorrect" do
    patch :update, id: @micropostcorrect, micropostcorrect: { content: @micropostcorrect.content, user_id: @micropostcorrect.user_id }
    assert_redirected_to micropostcorrect_path(assigns(:micropostcorrect))
  end

  test "should destroy micropostcorrect" do
    assert_difference('Micropostcorrect.count', -1) do
      delete :destroy, id: @micropostcorrect
    end

    assert_redirected_to micropostcorrects_path
  end
end
