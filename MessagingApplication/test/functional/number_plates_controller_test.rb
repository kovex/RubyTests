require 'test_helper'

class NumberPlatesControllerTest < ActionController::TestCase
  setup do
    @number_plate = number_plates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:number_plates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create number_plate" do
    assert_difference('NumberPlate.count') do
      post :create, number_plate: { authenified: @number_plate.authenified, country: @number_plate.country, id: @number_plate.id }
    end

    assert_redirected_to number_plate_path(assigns(:number_plate))
  end

  test "should show number_plate" do
    get :show, id: @number_plate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @number_plate
    assert_response :success
  end

  test "should update number_plate" do
    put :update, id: @number_plate, number_plate: { authenified: @number_plate.authenified, country: @number_plate.country, id: @number_plate.id }
    assert_redirected_to number_plate_path(assigns(:number_plate))
  end

  test "should destroy number_plate" do
    assert_difference('NumberPlate.count', -1) do
      delete :destroy, id: @number_plate
    end

    assert_redirected_to number_plates_path
  end
end
