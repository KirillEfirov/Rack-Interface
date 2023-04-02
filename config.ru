require "./hello_world_app"

use Rack::Auth::Basic do |username, password|
  username == 'admin' && password == 'secret'
end

run HelloWorldApp.new