require 'test_helper'

class PlaceOfInterestsControllerTest < ActionController::TestCase
  setup do
    @place_of_interest = place_of_interests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:place_of_interests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create place_of_interest" do
    assert_difference('PlaceOfInterest.count') do
      post :create, place_of_interest: { address: @place_of_interest.address, latitude: @place_of_interest.latitude, longitude: @place_of_interest.longitude, name: @place_of_interest.name, national_park_id: @place_of_interest.national_park_id }
    end

    assert_redirected_to place_of_interest_path(assigns(:place_of_interest))
  end

  test "should show place_of_interest" do
    get :show, id: @place_of_interest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @place_of_interest
    assert_response :success
  end

  test "should update place_of_interest" do
    patch :update, id: @place_of_interest, place_of_interest: { address: @place_of_interest.address, latitude: @place_of_interest.latitude, longitude: @place_of_interest.longitude, name: @place_of_interest.name, national_park_id: @place_of_interest.national_park_id }
    assert_redirected_to place_of_interest_path(assigns(:place_of_interest))
  end

  test "should destroy place_of_interest" do
    assert_difference('PlaceOfInterest.count', -1) do
      delete :destroy, id: @place_of_interest
    end

    assert_redirected_to place_of_interests_path
  end
end
