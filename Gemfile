source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

gem 'jquery-ui-rails', "4.0.2"


# To use asynchronous processing
gem 'sidekiq'

# to create easy form by views
gem 'simple_form', "2.1.0"

# to validate CNPJ
gem 'brcpfcnpj', "3.3.0"

# Use SCSS for stylesheets
gem 'anjlab-bootstrap-rails', '~> 3.0.0.3', :require => 'bootstrap-rails'

group :development, :test do
  gem 'rspec-rails', '~> 2.13'
  gem 'factory_girl_rails', '~> 4.2'
  gem 'vcr', '~> 2.4'
  gem 'timecop', '~> 0.6'
  gem 'pry', '~> 0.9'
  gem 'pry-nav', '~> 0.2'
  gem 'pry-doc', '~> 0.4'
  gem 'awesome_print', '~> 1.1'
  gem 'simplecov', '~> 0.7', :require => false
  gem 'foreman'
  gem 'jasmine'
  gem 'jasmine-jquery-rails'
  gem 'jasmine-phantom'
end

group :development do
  gem 'git_remote_branch', '~> 0.3'
  gem 'hub'
end
