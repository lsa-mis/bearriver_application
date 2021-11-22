source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3.5'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 5.5'

gem 'sassc', '~> 2.4'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0', '>= 4.0.7'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'devise'
# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'
gem 'activeadmin'

gem 'turnout'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

gem 'haml-rails'

# gem 'activeadmin_quill_editor'

gem 'country_select', '~> 4.0'

gem 'newrelic_rpm'
# gem 'newrelic-infinite_tracing'

group :development, :test do
  # gem 'pry-doc'
  gem 'pry-rails'
  gem "pry-byebug"

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.8'
  # gem 'shoulda-matchers'
  gem "capybara"
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
  gem 'database_cleaner'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen'
  gem "better_errors"
  gem "binding_of_caller"
  gem 'meta_request'
  gem 'capistrano',         require: false
  # gem 'capistrano3-puma'
  gem 'capistrano-rails',   require: false
  # gem 'capistrano-bundler', require: false
  # gem 'capistrano-rbenv',   require: false
  # gem 'capistrano-postgresql', require: false

  gem 'letter_opener_web'
  gem 'annotate'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
# Allows puma to use notify in systemd
gem 'sd_notify', '~> 0.1.1'