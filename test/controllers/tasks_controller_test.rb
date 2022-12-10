require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  # test "should get index" do
  #   get category_task_url
  #   assert_response :success
  # end
  setup do
    @task = tasks(:one)
  end

  test "should get new" do
    get new_category_task_url @task
    assert_response :success
  end

  test "should get edit" do
    get edit_category_task_url(@category)
    assert_response :success
  end

  test "should update task" do
    patch category_task_url(@category), params: { task: { day: @task.day, details: @task.details } }
    assert_redirected_to category_url(@category)
  end

  test "should show task" do
    get category_task_url(@task)
    assert_response :success
  end

  test "should create task" do
    assert_difference ("Task.count") do
      post category_tasks_url, params: { task: { name: @task.name, details: @task.details, completion: @task.completion } }
    end
    assert_response :redirect
  end
end