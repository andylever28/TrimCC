require 'test_helper'

class ApprenticesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get apprentices_new_url
    assert_response :success
  end

  test "should get create" do
    get apprentices_create_url
    assert_response :success
  end

end
