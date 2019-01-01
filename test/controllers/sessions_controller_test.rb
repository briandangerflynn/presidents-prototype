require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get users" do
    get sessions_users_url
    assert_response :success
  end

  test "should get teams" do
    get sessions_teams_url
    assert_response :success
  end

end
