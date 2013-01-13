require 'rubygems'
require 'bundler'
require 'barista'
Bundler.require(:default)
require 'sass/plugin/rack'
require './app'

# use scss for stylesheets
Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

# use coffeescript for javascript
Sinatra.register Barista::Integration::Sinatra

run Sinatra::Application