require "httparty"
require "json"

class UsersClient
  include HTTParty
  # complete this class
end

# pp UsersClient.users
# pp UsersClient.show_user(1)
# user_data = { name: "John Doe", username: "jhonny2000" }
# pp UsersClient.create_user(user_data)
# pp UsersClient.update_user(1, user_data)
# pp UsersClient.delete_user(1)
