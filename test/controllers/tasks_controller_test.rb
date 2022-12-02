require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_task_url
    assert_response :success
  end

  test "should show task" do
    get task_url(tasks(:one))
    assert_response :success
  end

  test "should create task" do
    post create_task_url, params: { task: {name: "Repaste laptop", details: "Use either Arctic MX-5 or Thermal Grizzly Kryonaut"} }
    assert_response :redirect
  end
end