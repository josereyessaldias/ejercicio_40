require 'test_helper'

class UserActivitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get user_activities_edit_url
    assert_response :success
  end

end
