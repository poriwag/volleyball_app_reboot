require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Pioneer Volleyball"
  end
  

  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Pioneer Volleyball"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Pioneer Volleyball"
  end
  
  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "Pioneer Volleyball"
  end

end
