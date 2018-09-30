require 'test_helper'

class Users1ControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get users1_show_url
    assert_response :success
  end

end
