require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test "should be able to create a new task" do
    task = Task.new
    task.name = "Repaste laptop"
    task.details = "Use either Arctic MX-5 or Thermal Grizzly Kryonaut"
    task.completion = false
    assert task.save, "New task saved"
  end

  test "should not be able to create a new task" do
    task = Task.new
    task.details = "Use either Arctic MX-5 or Thermal Grizzly Kryonaut"
    task.completion = false
    assert_not task.save, "New task not saved (no task name)"
  end

  test "should be able to update a task detail" do
    task = Task.new
    task.name = "Repaste laptop"
    task.details = "Use either Arctic MX-5 or Thermal Grizzly Kryonaut"
    task.completion = false
    task.save
    assert task.update(details: "Use Arctic MX-5 for better thermal paste longevity"), "Updated"
  end

  test "should be able to show task details" do
    task = Task.new
    task.name = "Repaste laptop"
    task.details = "Use either Arctic MX-5 or Thermal Grizzly Kryonaut"
    task.completion = false
    task.save
    id = task.id
    refute_nil Task.find(id), "Task exists"
    assert_equal Task.find(id).details, "Use either Arctic MX-5 or Thermal Grizzly Kryonaut"
  end

  test "should be able to toggle task completion" do
    task = Task.new
    task.name = "Repaste laptop"
    task.details = "Use either Arctic MX-5 or Thermal Grizzly Kryonaut"
    task.completion = false
    task.save
    assert task.toggle_completion
    assert_equal task.completion, true
    assert task.toggle_completion, "Can be undone"
  end

end