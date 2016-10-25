require 'test_helper'

class StripegemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stripegem = stripegems(:one)
  end

  test "should get index" do
    get stripegems_url
    assert_response :success
  end

  test "should get new" do
    get new_stripegem_url
    assert_response :success
  end

  test "should create stripegem" do
    assert_difference('Stripegem.count') do
      post stripegems_url, params: { stripegem: {  } }
    end

    assert_redirected_to stripegem_url(Stripegem.last)
  end

  test "should show stripegem" do
    get stripegem_url(@stripegem)
    assert_response :success
  end

  test "should get edit" do
    get edit_stripegem_url(@stripegem)
    assert_response :success
  end

  test "should update stripegem" do
    patch stripegem_url(@stripegem), params: { stripegem: {  } }
    assert_redirected_to stripegem_url(@stripegem)
  end

  test "should destroy stripegem" do
    assert_difference('Stripegem.count', -1) do
      delete stripegem_url(@stripegem)
    end

    assert_redirected_to stripegems_url
  end
end
