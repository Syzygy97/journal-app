require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in users(:mac)
    @category = categories(:one)
  end

  test "should get index" do
    get categories_url
    assert_response :success
  end

  test "should get new" do
    get new_category_url
    assert_response :success
  end

  test "should show category" do
    get category_url(@category)
    # assert_response :success
    assert_redirected_to categories_url
  end

  # test "should create category" do
  #   post categories_url, params: { category: { name: @category.name, details: @category.details, user_id: @category.user_id } }
  #   assert_response :redirect
  # end

  test "should create category" do
    post categories_url, params: { category: { name: @category.name, details: @category.details, user_id: @category.user_id } }
    assert_response :success
  end

  # test "should get edit" do
  #   get edit_category_url(@category)
  #   assert_response :success
  # end

  test "should get edit" do
    get edit_category_url(@category)
    assert_response :redirect
  end

  # test "should update category" do
  #   patch category_url(@category), params: { category: { name: @category.name, details: @category.details } }
  #   assert_redirected_to category_url(@category)
  # end

  test "should update category" do
    patch category_url(@category), params: { category: { name: @category.name, details: @category.details } }
    assert_response :success
  end

  test "should destroy category" do
    assert_difference("Category.count", -1) do
      delete category_url(@category)
    end

    assert_redirected_to categories_url
  end
end