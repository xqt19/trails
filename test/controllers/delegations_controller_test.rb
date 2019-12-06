require 'test_helper'

class DelegationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get delegations_new_url
    assert_response :success
  end

  test "should get create" do
    get delegations_create_url
    assert_response :success
  end

  test "should get edit" do
    get delegations_edit_url
    assert_response :success
  end

  test "should get update" do
    get delegations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get delegations_destroy_url
    assert_response :success
  end

end
