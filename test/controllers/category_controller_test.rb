require 'test_helper'

class CategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get category_index_url
    assert_response :success
  end

  test "should get show" do
    get category_show_url
    assert_response :success
  end

  test "should get edit" do
    get category_edit_url
    assert_response :success
  end

end
