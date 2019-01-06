require 'test_helper'

class ChatControllerTest < ActionDispatch::IntegrationTest
  test "should get restaurant" do
    get chat_restaurant_url
    assert_response :success
  end

end
