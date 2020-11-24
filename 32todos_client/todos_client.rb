require "httparty"
require "json"

class TodosClient
  include HTTParty
  base_uri "https://jsonplaceholder.typicode.com"

  def initialize(user_id)
    @user_id = user_id
  end

  def todos
    response = self.class.get("/users/#{@user_id}/todos")
    body = JSON.parse(response.body, symbolize_names: true)
  end

  def create_todo(todo_data)
    options = {
      headers: {
        "Content-Type": "application/json"
      },
      body: { title: todo_data[:title], completed: todo_data[:completed] }.to_json
    }
    response = self.class.post("/users/#{@user_id}/todos", options)
    body = JSON.parse(response.body, symbolize_names: true)
  end

  def show_todo(id)
    response = self.class.get("/users/#{@user_id}/todos/#{id}")
    body = JSON.parse(response.body, symbolize_names: true)
  end

end
