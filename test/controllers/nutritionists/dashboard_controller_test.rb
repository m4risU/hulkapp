require 'test_helper'

class Nutritionists::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nutritionists_dashboard_index_url
    assert_response :success
  end

end
