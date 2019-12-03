require 'test_helper'

class TrailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trails_index_url
    assert_response :success
  end

  test "should get show" do
    get trails_show_url
    assert_response :success
  end

  test "should get new" do
    get trails_new_url
    assert_response :success
  end

  test "should get create" do
    get trails_create_url
    assert_response :success
  end

  test "should get edit" do
    get trails_edit_url
    assert_response :success
  end

  test "should get update" do
    get trails_update_url
    assert_response :success
  end

  test "should get destroy" do
    get trails_destroy_url
    assert_response :success
  end

end
