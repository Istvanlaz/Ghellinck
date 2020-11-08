require 'test_helper'

class WorkShopsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get work_shops_index_url
    assert_response :success
  end

  test "should get show" do
    get work_shops_show_url
    assert_response :success
  end

end
