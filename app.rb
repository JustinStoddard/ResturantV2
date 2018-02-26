ENV['RACK_ENV'] ||= 'development'  # Sets the envirnment to a Rack up envirnment.
require 'sinatra/base' # This connects our app to sinatra
require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym
require_relative 'routes'

class Home < Sinatra::Base # This also connects our app to sinatra
    set :root, File.dirname(__FILE__)  # This sets the root file to the file were in now.
    enable :sessions # Not sure what this does but use it.
    set :views, Proc.new { File.join(root, "views") }
end