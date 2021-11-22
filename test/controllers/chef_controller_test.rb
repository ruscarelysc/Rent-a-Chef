require "test_helper"

class ChefControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get chef_show_url
    assert_response :success
  end

  test "should get index" do
    get chef_index_url
    assert_response :success
  end

  test "should get new" do
    get chef_new_url
    assert_response :success
  end

  test "should get create" do
    get chef_create_url
    assert_response :success
  end

  test "should get destroy" do
    get chef_destroy_url
    assert_response :success
  end
end
