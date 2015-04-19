require 'test_helper'

class CashadvancesControllerTest < ActionController::TestCase
  setup do
    @cashadvance = cashadvances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cashadvances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cashadvance" do
    assert_difference('Cashadvance.count') do
      post :create, cashadvance: { branch: @cashadvance.branch, bus_unit: @cashadvance.bus_unit, client: @cashadvance.client, date_from: @cashadvance.date_from, date_to: @cashadvance.date_to, status: @cashadvance.status }
    end

    assert_redirected_to cashadvance_path(assigns(:cashadvance))
  end

  test "should show cashadvance" do
    get :show, id: @cashadvance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cashadvance
    assert_response :success
  end

  test "should update cashadvance" do
    patch :update, id: @cashadvance, cashadvance: { branch: @cashadvance.branch, bus_unit: @cashadvance.bus_unit, client: @cashadvance.client, date_from: @cashadvance.date_from, date_to: @cashadvance.date_to, status: @cashadvance.status }
    assert_redirected_to cashadvance_path(assigns(:cashadvance))
  end

  test "should destroy cashadvance" do
    assert_difference('Cashadvance.count', -1) do
      delete :destroy, id: @cashadvance
    end

    assert_redirected_to cashadvances_path
  end
end
