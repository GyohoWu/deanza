require 'test_helper'

class ProjectControllerTest < ActionDispatch::IntegrationTest
  test "should get projects" do
    get project_projects_url
    assert_response :success
  end

end
