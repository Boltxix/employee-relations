require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_path
    assert_select "title", "Employee Relations"
    assert_response :success
  end
end
