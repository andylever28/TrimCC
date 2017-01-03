require 'test_helper'

class ApprenticeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get apprentice_new_url
    assert_response :success
  end

  test "should get create" do
    get apprentice_create_url
    assert_response :success
  end

end
