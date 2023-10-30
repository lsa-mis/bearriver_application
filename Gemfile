source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'activeadmin'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'country_select', '~> 4.0'
gem 'devise'
gem 'haml-rails'
gem 'jbuilder', '~> 2.5'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.6'
gem 'rails', '~> 6.0.3.5'
gem 'sassc', '~> 2.4'
# Allows puma to use notify in systemd
gem 'sd_notify', '~> 0.1.1'
gem "skylight"
gem 'turnout'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'webpacker', '~> 5.0'

group :development, :test do
  gem "capybara"
  gem 'database_cleaner'
  gem 'pry-rails'
  gem "pry-byebug"
  gem 'rspec-rails', '~> 3.8'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end

group :development do
  gem 'annotate'
  gem "better_errors"
  gem "binding_of_caller"
  gem 'capistrano',         require: false
  gem 'capistrano-rails',   require: false
  gem 'faker'
  gem 'letter_opener_web'
  gem 'listen'
  gem 'meta_request'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'web-console', '>= 3.3.0'
end

