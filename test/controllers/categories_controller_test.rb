require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get categories_url
    assert_response :success
  end

  test "should get new" do
    get new_category_url
    assert_response :success
  end

  test "should create category" do
    post create_category_url, params: { category: {name: "Work", details: "All work related events or tasks."} }
    assert_response :redirect
  end
end