require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get Property" do
    get articles_Property_url
    assert_response :success
  end
end
