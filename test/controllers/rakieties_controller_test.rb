require 'test_helper'

class RakietiesControllerTest < ActionController::TestCase
  setup do
    @rakiety = rakieties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rakieties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rakiety" do
    assert_difference('Rakiety.count') do
      post :create, rakiety: { marka: @rakiety.marka, model: @rakiety.model }
    end

    assert_redirected_to rakiety_path(assigns(:rakiety))
  end

  test "should show rakiety" do
    get :show, id: @rakiety
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rakiety
    assert_response :success
  end

  test "should update rakiety" do
    patch :update, id: @rakiety, rakiety: { marka: @rakiety.marka, model: @rakiety.model }
    assert_redirected_to rakiety_path(assigns(:rakiety))
  end

  test "should destroy rakiety" do
    assert_difference('Rakiety.count', -1) do
      delete :destroy, id: @rakiety
    end

    assert_redirected_to rakieties_path
  end
end
