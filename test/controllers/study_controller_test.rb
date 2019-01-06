require 'test_helper'

class StudyControllerTest < ActionDispatch::IntegrationTest
  test "should get math" do
    get study_math_url
    assert_response :success
  end

end
