# require 'rack'
# # require 'thin'
#
#
# # // You can use a class.
# class HelloWorld
#   def call env
#     [200, { 'Content-type' => 'text/plan'}, ['Hello world from a class :3']]
#   end
# end
#
# # // You can also use a Proc as it responds to the method call.
# app = ->(env) do
#   [200, {'Content-type' => 'text/plain'}, ['Hello world from a proc :3']]
# end
#
# # Rack::Handler::Thin.run // You can use different ruby web servers.
#
# Rack::Handler::WEBrick.run app
# # Rack::Handler::WEBrick.run HelloWorld.new // When you instantiate an obj from class.
