# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.5'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'mongoid', '~> 6.1.0'
gem 'puma', '~> 3.12'
gem 'rack-cors', '~> 1.0.5'
gem 'rails', '~> 5.2.4', '>= 5.2.4.1'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'mongoid-rspec', '~> 4.0.1', require: false
  gem 'pry-byebug'
  gem 'rails-controller-testing', '~> 1.0.4'
  gem 'rspec-json_expectations', '~> 2.2.0'
  gem 'rspec-rails', '4.0.0.beta4'
  gem 'rubocop-rails', require: false
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
