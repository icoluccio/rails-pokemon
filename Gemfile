source 'https://rubygems.org'

ruby '2.5.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
# Use Puma as the app server
gem 'puma'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use fontawesome for common icons
gem 'font-awesome-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'

gem 'mini_racer', platforms: :ruby

gem 'sqlite3'
# Use jquery as the JavaScript library
gem 'jquery-rails'

# Use autoprefixer to avoid writing css prefixes
gem 'autoprefixer-rails'

gem 'bootstrap-sass'

gem 'carrierwave'

gem 'responders'

gem 'active_model_serializers'

gem 'foreman'

# Active Admin
gem 'activeadmin', git: 'https://github.com/activeadmin/activeadmin'

# Enables Slim templates
gem 'slim-rails'

# Authorization Policies
gem 'pundit'

gem 'newrelic_rpm'

# CORS support
gem 'rack-cors', require: 'rack/cors'

gem 'webpacker'

group :development do
  # Gem to detect N+1 queries
  gem 'better_errors'
  gem 'bullet'
  gem 'listen'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  # Spring speeds up development by keeping your application running in the background.
  # Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'meta_request'

end

group :development, :test do
  gem 'awesome_print'

  # Loads ENV variables from .env file in base folder
  gem 'dotenv-rails'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri

  gem 'factory_bot_rails'
  gem 'faker'

  # Lints
  gem 'rubocop'
  gem 'rubocop-rspec'

  gem 'scss_lint', require: false

  # Static analysis for security vulnerabilities
  gem 'brakeman', require: false
end

group :test do
  gem 'database_cleaner'
  gem 'rspec-mocks'
  gem 'rspec-rails'
  gem 'shoulda-matchers'

  gem 'capybara'
  gem 'formulaic'
  gem 'launchy'

  gem 'timecop'
  gem 'webmock'

  # CodeStats
  gem 'rubycritic', require: false
  gem 'simplecov', require: false

  # Solves 'NoMethodError: assert_template has been extracted to a gem.' as suggested by rspec
  # This error was thrown when using `expect(response).to render_template('template')`
  gem 'rails-controller-testing'

  gem 'rack-test', require: 'rack/test'
end

group :production do
  gem 'rails_12factor'
end
