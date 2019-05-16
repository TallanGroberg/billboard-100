require 'test_helper'

class ArtsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get arts_index_url
    assert_response :success
  end

  test "should get show" do
    get arts_show_url
    assert_response :success
  end

end
