require 'sinatra/base'
require 'json'
require 'sinatra/json'
require 'sinatra/reloader'

class RootApp < Sinatra::Base

    configure :development do
        register Sinatra::Reloader
    end

    Dir.glob("./app/**/*.rb").sort.each do |file|
        require file
    end

end
