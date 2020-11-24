# Users client

You are a UsersClient class (you are quite abstract this time 🙂).

Your main method are `class methods` and their function is to interact with the API located at "https://jsonplaceholder.typicode.com". Specificaly, you will interact with the `users` resource.

- When you are asked for `users` you will make a `get` request to `https://jsonplaceholder.typicode.com/users`, parse the response and return the result. (check parse instructions)

- When you are asked for `show_user` you will be given and `id`. Then you will make a `get` request to `https://jsonplaceholder.typicode.com/users/[id]`, parse the response and return the result.

- When you are asked for `create_user` you will be given a `user_data` hash with the required information to create a user. Then you will make a `post` request to `https://jsonplaceholder.typicode.com/users` including in the `headers` the key/value pair `"Content-Type" => "application/json"`. You will include a `body` as well passing the `user_data` in JSON format. Then you will parse the response and return the result.

- When you are asked for `update_user` you will be given an `id` and `user_data` hash with the required information to update the user. Then you will make a `patch` request to `https://jsonplaceholder.typicode.com/users/[id]` including in the `headers` the key/value pair `"Content-Type" => "application/json"`. You will include a `body` as well passing the `user_data` in JSON format. Then you will parse the response and return the result.

- When you are asked for `delete_user` you will be given an `id`. Then you will make a `delete` request to `https://jsonplaceholder.typicode.com/users/[id]`, parse the response and return the result.

## Parsing instruction

This is not a regular practice but, for academic reasons, you will parse the response in the following way.

The parsed response will be a ruby hash:

```ruby
{
  code: # response code number,
  message: # response message string,
  body: # response body parsed using symbols as keys
}
```

## Insomnia json file

If you want to interact with the API directly you can use the program Insomnia (similar to postman and others). Using insomnia you can `import` the `insomnia-users.json` to have all the users endpoint ready to use 😉
![](https://p-vvf5mjm.b1.n0.cdn.getcloudapp.com/items/GGu2XjYZ/Image%202020-11-24%20at%206.55.40%20AM.png?source=viewer&v=a0440dd8ac644361f4fee8e41988507b)
