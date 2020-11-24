# Todos client

You are a TodosClient.

Every todo belongs to a user, thats why, when you are initialize, you will be given a `user_id`. You need to remember this value to make all the required http request.

All your methods are `instance methods` and their function is to interact with the API located at "https://jsonplaceholder.typicode.com". Specificaly, you will interact with the `todos` resource.

- When you are asked for `todos` you will make a `get` request to `https://jsonplaceholder.typicode.com/users/[user_id]/todos`, parse the response and return the result. (check parse instructions)

- When you are asked for `create_todo` you will be given a `todo_data` hash with the required information to create a todo. Then you will make a `post` request to `https://jsonplaceholder.typicode.com/[user_id]/todos` including in the `headers` the key/value pair `"Content-Type" => "application/json"`. You will include a `body` as well passing the `todo_data` in JSON format. Then you will parse the response and return the result.

- When you are asked for `show_todo` you will be given and `id`. Then you will make a `get` request to `https://jsonplaceholder.typicode.com/[user_id]/todos/[id]`, parse the response and return the result.

## Parsing instruction

Ok, this time you will parse like a pro.

Before parsing anything, you will check the response code from the response.

If the code falls between 200 and 299 it means a correct result. Then you will parse the response body using symbols as the hash keys ans return the result (only the parsed body)

If the response code falls between 400 and 499, it means that something went wrong on the server. In that case you will create and `raise` a new `Net::HTTPError` error passing the as arguments the response message and the response object itself. (you can check the documentation for the initialize method of that error [here](https://www.rubydoc.info/stdlib/net/Net/HTTPExceptions#initialize-instance_method))

## Note about JSON Placeholder

JSON Place holder hasn't implement the `show` method for the resource user/todos. So every time you try to show a todo on the endpoint `/[user_id]/todos/[id]` the server will responde with a code 404 Not Found. This is not "normal" but it will help us to practice raising errors 💪🏼

## Insomnia json file

If you want to interact with the API directly you can use the program Insomnia (similar to postman and others). Using insomnia you can `import` the `insomnia-todos.json` to have all the users endpoint ready to use 😉

![](https://p-vvf5mjm.b1.n0.cdn.getcloudapp.com/items/2Nu0kZrj/Image%202020-11-24%20at%207.09.05%20AM.png?source=viewer&v=1a60cb11f3afa9dc368a04fdc0fbd59f)
