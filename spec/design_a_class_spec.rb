require 'design_a_class'

RSpec.describe do
  context "User has no tasks set" do
  it "Will return blank when nothing is input" do
    todo_list = TodoList.new
    expect(todo_list.list).to eq []
    end
  end

  context "given a task" do
    it "will add a task to the list" do
    todo_list = TodoList.new
    todo_list.add("Wash the car")
    expect(todo_list.list).to eq ["Wash the car"]
    end
  end

  context "given two tasks" do
    it "will add a 2 tasks to the list" do
    todo_list = TodoList.new
    todo_list.add("Wash the car")
    todo_list.add("Wash the dog")
    expect(todo_list.list).to eq ["Wash the car", "Wash the dog"]
    end
  end
  
  context "when completed a task" do
    it "removes the task from the list" do
    todo_list = TodoList.new
    todo_list.add("Wash the car")
    todo_list.add("Wash the dog")
    todo_list.complete("Wash the car")
    expect(todo_list.list).to eq ["Wash the dog"]
  end
end

context "when try to complete a task not on the list" do
  it "fails" do
  todo_list = TodoList.new
  todo_list.add("Wash the car")
  expect {todo_list.complete("Wash the microwave")}.to raise_error "No such task."
    end
  end
end