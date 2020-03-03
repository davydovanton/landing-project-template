# frozen_string_literal: true

source 'https://rubygems.org'

ruby '~> 2.7.0'

gem 'dry-system', github: 'dry-rb/dry-system'
gem "sinatra"
gem 'thin'

gem 'rom'
gem 'rom-sql'
gem 'rom-repository'
gem 'pg'

gem 'dotenv'
gem 'rake'

gem 'dry-monads'

group :test do
  # 0.18.x breaks codacy result parser
  gem 'simplecov', '0.17.1', require: false, platforms: :ruby
  gem 'rspec'
end
