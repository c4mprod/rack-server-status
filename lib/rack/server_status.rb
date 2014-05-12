module Rack
  class ServerStatus
    def initialize(app)
      @app = app
    end

    def call(env)
      return [200, {'Content-Type' => 'text/plain'}, ['OK']] if env['PATH_INFO'] == '/status'
      @app.call(env)
    end
  end
end