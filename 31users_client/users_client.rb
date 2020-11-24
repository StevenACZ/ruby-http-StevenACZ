require "httparty"
require "json"

class UsersClient
  include HTTParty
  base_uri "https://jsonplaceholder.typicode.com"

  def self.users
    response = get("/users")
    body = JSON.parse(response.body, symbolize_names: true)
    { code: response.code, message: response.message, body: body }
  end

  def self.show_user(id)
    response = get("/users/#{id}")
    body = JSON.parse(response.body, symbolize_names: true)
    { code: response.code, message: response.message, body: body }
  end

  def self.create_user(name: "", username: "", email: "")
    options = {
      headers: {
        "Content-Type": "application/json"
      },
      body: {name: name, username: username, email: email}.to_json
    }
    response = post("/users", options)
    body = JSON.parse(response.body, symbolize_names: true)
    { code: response.code, message: response.message, body: body }
  end

  def self.update_user(id, user_data)
    options = {
      headers: {
        "Content-Type": "application/json"
      },
      body: {name: user_data[:name], username: user_data[:username]}.to_json
    }
    response = patch("/users/#{id}", options)
    body = JSON.parse(response.body, symbolize_names: true)
    { code: response.code, message: response.message, body: body }
  end

  def self.delete_user(id)
    response = delete("/users/#{id}")
    body = JSON.parse(response.body, symbolize_names: true)
    { code: response.code, message: response.message, body: body }
  end
end
