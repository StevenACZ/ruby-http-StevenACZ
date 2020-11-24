$LOAD_PATH.unshift("./32todos_client")

require "minitest/autorun"
require_relative "todos_client"

class TodosClientTest < Minitest::Test
  def setup
    user_id = 5
    @todos_client = TodosClient.new(user_id)
  end

  def test_index_all_user_todos
    # skip
    response = @todos_client.todos

    assert_instance_of Array, response
    refute_empty response
    assert_instance_of Symbol, response.first.keys[0]
    assert_equal 5, response.sample[:userId]
  end

  def test_create_user_todos
    skip
    todo_data = { title: "New todo", completed: false }
    response = @todos_client.create_todo(todo_data)

    assert_instance_of Hash, response
    refute_empty response
    assert_instance_of Symbol, response.keys[0]
    assert_includes response.keys, :id
    assert_equal "5", response[:userId]
    assert_equal "New todo", response[:title]
    refute response[:completed]
  end

  def test_show_todo_raise_error
    skip
    error = assert_raises(Net::HTTPError) do
      @todos_client.show_todo(100)
    end

    assert_equal "Not Found", error.message
    assert_equal 404, error.response.code
    assert_equal "{}", error.response.body
  end
end