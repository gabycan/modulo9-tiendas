require "test_helper"

class Admin::StatusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_status_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_status_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_status_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_status_edit_url
    assert_response :success
  end
end
