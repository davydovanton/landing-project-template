require_relative 'config/boot'
require 'rom-sql'
require 'rom/sql/rake_task'

namespace :db do
  task :setup do
    ROM::SQL::RakeSupport.env = App[:rom]
  end
end
