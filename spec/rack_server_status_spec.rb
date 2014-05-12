lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rack/test'
require 'test/unit'
require 'rack/server_status'

class StatusPageTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Rack::ServerStatus.new('StatusPageTest')
  end

  def test_status
    get "/status"
    assert last_response.ok?
  end

  def test_body
    get "/status"
    assert last_response.body == 'OK'
  end

end