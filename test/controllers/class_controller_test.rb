require 'test_helper'

class ClassControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get class_index_url
    assert_response :success
  end

end
