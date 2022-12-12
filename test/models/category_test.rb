require 'test_helper'


#MINI TEST LIBRARY METHODS (i.e. assert_equal, refute_nil)

# User Story #1: As a User, I want to create a category that can be used to organize my tasks
# User Story #2: As a User, I want to edit a category to update the category's details
# User Story #3: As A User, I want to view a category to show the category's details

class CategoryTest < ActiveSupport::TestCase

  # test "should be able to create a new category" do
  #   category = Category.new
  #   category.name = "Test"
  #   category.details = "Testing testing"
  #   assert category.save, "New category saved"
  # end

  test "should not be able to create a new category" do
    category = Category.new
    category.details = "All work related events or tasks."
    assert_not category.save, "New category not saved (no category name)"
  end

  test "should be able to update a category detail" do
    category = Category.new
    category.name = "Work"
    category.details = "All work related events or tasks."
    category.save
    assert category.update(details: "Updated"), "Category details updated."
  end

  # test "should be able to show category details" do
  #   category = Category.new
  #   category.name = "Work"
  #   category.details = "All work related events or tasks."
  #   category.save
  #   id = category.id
  #   refute_nil Category.find(id), "Category exists"
  #   assert_equal Category.find(id).details, "All work related events or tasks." 
  # end
end