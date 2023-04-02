# Writing simple Rack app

### hello_world_app.rb

```
class HelloWorldApp
  def call(env)
    [200, {"Content-Type" => "text/plain"}, ["Hello, World!"]]
  end
end
```

Here HelloWorldApp is a class that implements the call method, which takes an env object (environment) and returns an array containing the response status, headers and the response body.

The response status 200 means that the request has been processed successfully. The Content-Type headers indicate the type of response content, in this case it is text/plain, which means that the response body contains plain text. The response body returns the string "Hello, World!".

To run this application, you can use any server that supports Rack. For example, to run this application, you can use the following code:

### config.ru

```
require "./hello_world_app"

use Rack::Auth::Basic do |username, password|
  username == 'admin' && password == 'secret'
end

run HelloWorldApp.new
```

Here config.ru - this is a configuration file that defines how to launch a Rack application. The run method is used to launch a Rack application that accepts the application object created above.

Middleware Rack::Auth::Basic requests a login and password to access the application. In this example, `login and password are 'admin' and 'secret'` respectively.

Then you can start the Rack server using the backup command in the `console`, for example:

### console 

```
rackup config.ru
```

Address to see "Hello, World!" in the browser: `http://localhost:9292`