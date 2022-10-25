# frozen_string_literal: true

require 'yaml'
require 'sequel'

APP_ENV = ENV['RACK_ENV'] || 'development'
ENV['SINATRA_ENV'] ||= 'development'

require 'require_all'
require 'bundler/setup'
Bundler.require(ENV['SINATRA_ENV'])

def root
  __dir__
end

DB = Sequel.connect(YAML.load_file(File.join(root, 'database.yml'))[APP_ENV])
# load enum extension to allow postgres enum data type:
# https://sequel.jeremyevans.net/rdoc-plugins/files/lib/sequel/extensions/pg_enum_rb.html
# https://www.postgresql.org/docs/current/functions-enum.html
DB.extension :pg_array, :pg_enum
