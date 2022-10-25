# frozen_string_literal: true

require 'sinatra'
require 'sinatra/namespace'
require 'sinatra/json'
require 'sinatra/cookies'
# require "sinatra/cors"
require 'bcrypt'
require 'securerandom'
# require 'jwt'
require 'sequel'

# see gemfile :
# or: set :server, %w[weBrick]
set :server, %w[thin]

require_relative './config/environment'
# require './classes_comptable.insert.rb'
class App < Sinatra::Application
  get '/bonjour' do
    JSON 'response' => 'bonjour'
  end

  post '/aurevoir' do
    puts request.body.read
  end
end
