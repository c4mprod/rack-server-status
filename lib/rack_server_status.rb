require 'rack/server_status'

if defined? Rails
  case Rails::VERSION::MAJOR
    when 3
      class Rack::ServerStatus::Railtie < Rails::Railtie
        initializer('rack-server_status.insert-rack-server_status') { |app| app.config.middleware.insert(0, Rack::ServerStatus) }
      end
  end
end