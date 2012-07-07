require "moped"

config["moped"] = EM::Synchrony::ConnectionPool.new(size: 10) do
  Moped::Session.new([ "localhost:27017" ], database: "echo_dev")
end
