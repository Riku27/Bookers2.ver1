require "test_helper"

class BoosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get boos_new_url
    assert_response :success
  end

  test "should get index" do
    get boos_index_url
    assert_response :success
  end

  test "should get show" do
    get boos_show_url
    assert_response :success
  end
end
