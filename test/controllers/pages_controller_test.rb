require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get nosotros" do
    get pages_nosotros_url
    assert_response :success
  end

end
