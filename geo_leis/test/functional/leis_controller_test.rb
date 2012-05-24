require 'test_helper'

class LeisControllerTest < ActionController::TestCase
  setup do
    @lei = leis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lei" do
    assert_difference('Lei.count') do
      post :create, lei: { ano: @lei.ano, bairro: @lei.bairro, codigo: @lei.codigo, endereco: @lei.endereco, gmaps: @lei.gmaps, latitude: @lei.latitude, longitude: @lei.longitude, regiao: @lei.regiao, titulo: @lei.titulo }
    end

    assert_redirected_to lei_path(assigns(:lei))
  end

  test "should show lei" do
    get :show, id: @lei
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lei
    assert_response :success
  end

  test "should update lei" do
    put :update, id: @lei, lei: { ano: @lei.ano, bairro: @lei.bairro, codigo: @lei.codigo, endereco: @lei.endereco, gmaps: @lei.gmaps, latitude: @lei.latitude, longitude: @lei.longitude, regiao: @lei.regiao, titulo: @lei.titulo }
    assert_redirected_to lei_path(assigns(:lei))
  end

  test "should destroy lei" do
    assert_difference('Lei.count', -1) do
      delete :destroy, id: @lei
    end

    assert_redirected_to leis_path
  end
end
