require 'test_helper'

class DeliverersControllerTest < ActionController::TestCase
  setup do
    @deliverer = deliverers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deliverers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deliverer" do
    assert_difference('Deliverer.count') do
      post :create, deliverer: { address: @deliverer.address, creditcard: @deliverer.creditcard, email: @deliverer.email, name: @deliverer.name, pwdHash: @deliverer.pwdHash, rating: @deliverer.rating, refID: @deliverer.refID }
    end

    assert_redirected_to deliverer_path(assigns(:deliverer))
  end

  test "should show deliverer" do
    get :show, id: @deliverer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deliverer
    assert_response :success
  end

  test "should update deliverer" do
    put :update, id: @deliverer, deliverer: { address: @deliverer.address, creditcard: @deliverer.creditcard, email: @deliverer.email, name: @deliverer.name, pwdHash: @deliverer.pwdHash, rating: @deliverer.rating, refID: @deliverer.refID }
    assert_redirected_to deliverer_path(assigns(:deliverer))
  end

  test "should destroy deliverer" do
    assert_difference('Deliverer.count', -1) do
      delete :destroy, id: @deliverer
    end

    assert_redirected_to deliverers_path
  end
end
