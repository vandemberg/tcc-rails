require "test_helper"

class RopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rop = rops(:one)
  end

  test "should get index" do
    get rops_url
    assert_response :success
  end

  test "should get new" do
    get new_rop_url
    assert_response :success
  end

  test "should create rop" do
    assert_difference("Rop.count") do
      post rops_url, params: { rop: { name: @rop.name, neighbourhood_id: @rop.neighbourhood_id } }
    end

    assert_redirected_to rop_url(Rop.last)
  end

  test "should show rop" do
    get rop_url(@rop)
    assert_response :success
  end

  test "should get edit" do
    get edit_rop_url(@rop)
    assert_response :success
  end

  test "should update rop" do
    patch rop_url(@rop), params: { rop: { name: @rop.name, neighbourhood_id: @rop.neighbourhood_id } }
    assert_redirected_to rop_url(@rop)
  end

  test "should destroy rop" do
    assert_difference("Rop.count", -1) do
      delete rop_url(@rop)
    end

    assert_redirected_to rops_url
  end
end
