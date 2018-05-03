$LOAD_PATH << File.expand_path("..", __FILE__)

require 'rack'
require 'main_application'
require 'middleware_time'

Rack::Handler::WEBrick.run TimelogMiddleware.new(App.new)
