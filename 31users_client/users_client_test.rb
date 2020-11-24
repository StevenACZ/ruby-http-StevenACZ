$LOAD_PATH.unshift("./31users_client")

require "minitest/autorun"
require_relative "users_client"

class UsersClientTest < Minitest::Test
  def test_index_all_users_with_parsed_body
    # skip
    response = UsersClient.users

    assert_equal 200, response[:code]
    assert_equal "OK", response[:message]
    assert_instance_of Array, response[:body]
    refute_empty response[:body]
    assert_instance_of Symbol, response[:body].first.keys[0]
  end

  def test_show_user
    skip
    response = UsersClient.show_user(1)

    assert_equal 200, response[:code]
    assert_equal "OK", response[:message]
    assert_instance_of Hash, response[:body]
    refute_empty response[:body]
    assert_instance_of Symbol, response[:body].keys[0]
  end

  def test_show_non_existing_user
    skip
    response = UsersClient.show_user(1000)

    assert_equal 404, response[:code]
    assert_equal "Not Found", response[:message]
    assert_empty response[:body]
  end

  def test_create_user
    skip
    user_data = { name: "John Doe", username: "jhonny2000" }
    response = UsersClient.create_user(user_data)

    assert_equal 201, response[:code]
    assert_equal "Created", response[:message]
    assert_instance_of Hash, response[:body]
    refute_empty response[:body]
    assert_instance_of Symbol, response[:body].keys[0]
    assert_includes response[:body].keys, :id
    assert_equal "John Doe", response[:body][:name]
  end

  def test_update_user
    skip
    user_data = { name: "John Doe", username: "jhonny2000" }
    response = UsersClient.update_user(1, user_data)

    assert_equal 200, response[:code]
    assert_equal "OK", response[:message]
    assert_instance_of Hash, response[:body]
    refute_empty response[:body]
    assert_instance_of Symbol, response[:body].keys[0]
    assert_equal 1, response[:body][:id]
    assert_equal "John Doe", response[:body][:name]
    assert_equal "jhonny2000", response[:body][:username]
    assert_includes response[:body].keys, :email, "Other fields like 'email' shouldn't change"
  end

  def test_delete_user
    skip
    response = UsersClient.delete_user(1)

    assert_equal 200, response[:code]
    assert_equal "OK", response[:message]
    assert_instance_of Hash, response[:body]
    assert_empty response[:body]
  end
end