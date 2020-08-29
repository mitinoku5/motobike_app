require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
 def setup
    @base_title = "MotoBike App"
 end
 
 test "should get root" do
     get root_url
     assert_response :success
 end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "MotoBike App"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | MotoBike App"
  end

end
