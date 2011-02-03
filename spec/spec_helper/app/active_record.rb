# Configure Rails Envinronment
APP_NAME = 'active_record_app'
require 'spec_helper/init'

# Run any available migration  
migrations_dir = File.expand_path("../../dummy_apps/#{APP_NAME}/db/migrate/", __FILE__)
puts "migrations_dir: #{migrations_dir}"
ActiveRecord::Migrator.migrate migrations_dir

require 'spec_helper/config'