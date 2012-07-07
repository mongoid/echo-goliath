require "goliath"
require "yajl"
require "yajl/json_gem"

class Echo < Goliath::API
  use Goliath::Rack::DefaultMimeType
  use Goliath::Rack::Render

  def response(env)
    [ 200, { "Content-Type" => "application/json" }, moped[:bands].find.to_a.to_json ]
  end
end
