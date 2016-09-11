require 'sinatra/reloader'
require 'rack/test'
require './env/development.rb'
require './app.rb'

routes = {
    '/' => NameController,
    '/histogram' =>SocialNetworkController
}

routes.each do |route,controller|
    map(route){run controller}
end
