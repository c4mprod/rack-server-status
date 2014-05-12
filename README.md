# RackServerStatus

Basic Rack middleware for checking Rack/Rails 3 server availability

## Installation

Add this line to your application's Gemfile:

    gem 'rack_server_status'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack_server_status

## Usage
### Rails 3 apps
Install gem and enjoy!

### Sinatra and other Rack apps
    # config.ru
    require 'rack/server_status"
    use Rack::ServerStatus

## Contributing

1. Fork it
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create new Pull Request