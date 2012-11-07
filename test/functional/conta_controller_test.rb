require 'test_helper'

class ContaControllerTest < ActionController::TestCase
  setup do
    @contum = conta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contum" do
    assert_difference('Contum.count') do
      post :create, contum: { agencia: @contum.agencia, nro_conta: @contum.nro_conta, saldo: @contum.saldo }
    end

    assert_redirected_to contum_path(assigns(:contum))
  end

  test "should show contum" do
    get :show, id: @contum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contum
    assert_response :success
  end

  test "should update contum" do
    put :update, id: @contum, contum: { agencia: @contum.agencia, nro_conta: @contum.nro_conta, saldo: @contum.saldo }
    assert_redirected_to contum_path(assigns(:contum))
  end

  test "should destroy contum" do
    assert_difference('Contum.count', -1) do
      delete :destroy, id: @contum
    end

    assert_redirected_to conta_path
  end
end
