require 'test_helper'

class WhatanideasControllerTest < ActionController::TestCase
  setup do
    @whatanidea = whatanideas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:whatanideas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create whatanidea" do
    assert_difference('Whatanidea.count') do
      post :create, whatanidea: { address: @whatanidea.address, description: @whatanidea.description, name: @whatanidea.name, picture: @whatanidea.picture }
    end

    assert_redirected_to whatanidea_path(assigns(:whatanidea))
  end

  test "should show whatanidea" do
    get :show, id: @whatanidea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @whatanidea
    assert_response :success
  end

  test "should update whatanidea" do
    patch :update, id: @whatanidea, whatanidea: { address: @whatanidea.address, description: @whatanidea.description, name: @whatanidea.name, picture: @whatanidea.picture }
    assert_redirected_to whatanidea_path(assigns(:whatanidea))
  end

  test "should destroy whatanidea" do
    assert_difference('Whatanidea.count', -1) do
      delete :destroy, id: @whatanidea
    end

    assert_redirected_to whatanideas_path
  end
end
