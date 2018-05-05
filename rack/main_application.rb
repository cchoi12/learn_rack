# app = ->(env) do
#   sleep 3
#   [200, {'Content-type' => 'text/plain'}, ['Hello there cute kitty']]
# end

class App
  def call env
    sleep 3
    [200, {'Content-type' => 'text/plain'}, ['Hello there cute kitty']]
  end
end
