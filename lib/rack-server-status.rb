require File.join(File.expand_path(File.dirname(__FILE__)), 'rack/server_status')

if defined? Rails
  case Rails::VERSION::MAJOR
    when 3
      class Rack::ServerStatus::Railtie < Rails::Railtie
        initializer('rack-server-status.prepend') { |app| app.config.middleware.insert(0, Rack::ServerStatus) }
      end
  end
end