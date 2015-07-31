require 'test_helper'

class StudioPointsControllerTest < ActionController::TestCase
  setup do
    @studio_point = studio_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studio_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studio_point" do
    assert_difference('StudioPoint.count') do
      post :create, studio_point: { city: @studio_point.city, lat: @studio_point.lat, lon: @studio_point.lon, state: @studio_point.state, street: @studio_point.street, studio_id: @studio_point.studio_id, zip: @studio_point.zip }
    end

    assert_redirected_to studio_point_path(assigns(:studio_point))
  end

  test "should show studio_point" do
    get :show, id: @studio_point
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @studio_point
    assert_response :success
  end

  test "should update studio_point" do
    patch :update, id: @studio_point, studio_point: { city: @studio_point.city, lat: @studio_point.lat, lon: @studio_point.lon, state: @studio_point.state, street: @studio_point.street, studio_id: @studio_point.studio_id, zip: @studio_point.zip }
    assert_redirected_to studio_point_path(assigns(:studio_point))
  end

  test "should destroy studio_point" do
    assert_difference('StudioPoint.count', -1) do
      delete :destroy, id: @studio_point
    end

    assert_redirected_to studio_points_path
  end
end
