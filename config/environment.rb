# require 'yaml'
require 'sequel'

APP_ENV = ENV["RACK_ENV"] || "development"
ENV['SINATRA_ENV'] ||= "development"

require 'require_all'
require 'bundler/setup'
Bundler.require(ENV['SINATRA_ENV'])

=begin
def root
  File.expand_path(File.dirname(__FILE__))
end

DB = Sequel.connect(YAML.load_file(File.join(root,'database.yml'))[APP_ENV]) 
=end
