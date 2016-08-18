require 'test_helper'

class NationalParksControllerTest < ActionController::TestCase
  setup do
    @national_park = national_parks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:national_parks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create national_park" do
    assert_difference('NationalPark.count') do
      post :create, national_park: { description: @national_park.description, name: @national_park.name }
    end

    assert_redirected_to national_park_path(assigns(:national_park))
  end

  test "should show national_park" do
    get :show, id: @national_park
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @national_park
    assert_response :success
  end

  test "should update national_park" do
    patch :update, id: @national_park, national_park: { description: @national_park.description, name: @national_park.name }
    assert_redirected_to national_park_path(assigns(:national_park))
  end

  test "should destroy national_park" do
    assert_difference('NationalPark.count', -1) do
      delete :destroy, id: @national_park
    end

    assert_redirected_to national_parks_path
  end
end
