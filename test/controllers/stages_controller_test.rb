require "test_helper"

class StagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stages_index_url
    assert_response :success
  end
end
