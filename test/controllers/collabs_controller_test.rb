require 'test_helper'

class CollabsControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get collabs_destroy_url
    assert_response :success
  end

end
