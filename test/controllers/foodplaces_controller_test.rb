require 'test_helper'

class FoodplacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foodplace = foodplaces(:one)
  end

  test "should get index" do
    get foodplaces_url
    assert_response :success
  end

  test "should get new" do
    get new_foodplace_url
    assert_response :success
  end

  test "should create foodplace" do
    assert_difference('Foodplace.count') do
      post foodplaces_url, params: { foodplace: { address: @foodplace.address, email: @foodplace.email, name: @foodplace.name, phone: @foodplace.phone, score: @foodplace.score } }
    end

    assert_redirected_to foodplace_url(Foodplace.last)
  end

  test "should show foodplace" do
    get foodplace_url(@foodplace)
    assert_response :success
  end

  test "should get edit" do
    get edit_foodplace_url(@foodplace)
    assert_response :success
  end

  test "should update foodplace" do
    patch foodplace_url(@foodplace), params: { foodplace: { address: @foodplace.address, email: @foodplace.email, name: @foodplace.name, phone: @foodplace.phone, score: @foodplace.score } }
    assert_redirected_to foodplace_url(@foodplace)
  end

  test "should destroy foodplace" do
    assert_difference('Foodplace.count', -1) do
      delete foodplace_url(@foodplace)
    end

    assert_redirected_to foodplaces_url
  end
end
