require 'test_helper'

class CarPlatesControllerTest < ActionController::TestCase
  setup do
    @car_plate = car_plates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_plates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_plate" do
    assert_difference('CarPlate.count') do
      post :create, car_plate: { car_ident_num: @car_plate.car_ident_num, country: @car_plate.country, validated: @car_plate.validated }
    end

    assert_redirected_to car_plate_path(assigns(:car_plate))
  end

  test "should show car_plate" do
    get :show, id: @car_plate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_plate
    assert_response :success
  end

  test "should update car_plate" do
    put :update, id: @car_plate, car_plate: { car_ident_num: @car_plate.car_ident_num, country: @car_plate.country, validated: @car_plate.validated }
    assert_redirected_to car_plate_path(assigns(:car_plate))
  end

  test "should destroy car_plate" do
    assert_difference('CarPlate.count', -1) do
      delete :destroy, id: @car_plate
    end

    assert_redirected_to car_plates_path
  end
end
