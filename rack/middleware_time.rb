# require 'rack'

class TimelogMiddleware
  def initialize app
    @app = app
  end

  def call(env)
    before_time = Time.now.to_i
    status, headers, body = @app.call(env)
    after_time = Time.now.to_i
    time_log = "\n Application took #{after_time - before_time} seconds to boot."

    [status, headers, body << time_log]
  end
end

# Rack::Handler::WEBrick.run TimelogMiddleware.new(app)
# use TimelogMiddleware
# run app

# // (env)
# We can go further and use that env arg that we are passing in
# The env object is a hash that contains all of the data about our request.
# Things like response, use agent string, cookies and requested path.
# ** All the values are strings rather than something more structured like Rails params.
# https://www.rubydoc.info/github/rack/rack/file/SPEC#The_Environment for more info.

# // Middleware
# Rack is cool and everything, but can it do more?
# Middleware is the essential building block for applications built using the Rack design pattern.
# Each middleware is a Rack compatible application!
# Think of middleware as layers of an onion, you go through layer by layer until you get to the application.
