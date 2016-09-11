require 'rspec'
require 'rack/test'
require_relative File.join('..', 'app')

RSpec.configure do |conf|
    conf.include Rack::Test::Methods
    conf.color = true
    conf.tty = true
    conf.formatter = :documentation
end
