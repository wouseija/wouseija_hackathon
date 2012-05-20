require 'test_helper'

class VereadorsControllerTest < ActionController::TestCase
  setup do
    @vereador = vereadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vereadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vereador" do
    assert_difference('Vereador.count') do
      post :create, vereador: { codigo: @vereador.codigo, nome: @vereador.nome }
    end

    assert_redirected_to vereador_path(assigns(:vereador))
  end

  test "should show vereador" do
    get :show, id: @vereador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vereador
    assert_response :success
  end

  test "should update vereador" do
    put :update, id: @vereador, vereador: { codigo: @vereador.codigo, nome: @vereador.nome }
    assert_redirected_to vereador_path(assigns(:vereador))
  end

  test "should destroy vereador" do
    assert_difference('Vereador.count', -1) do
      delete :destroy, id: @vereador
    end

    assert_redirected_to vereadors_path
  end
end
