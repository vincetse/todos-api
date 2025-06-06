source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.4.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
##gem 'rails', '~> 5.2.8.1'
gem 'rails', '~> 8.0', '>= 8.0.2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
##gem 'puma', '~> 5.0'
gem 'puma', '~> 6.4', '>= 6.4.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'mutex_m', '~> 0.3.0'
gem 'bigdecimal', '~> 1.2', '>= 1.2.7'
gem 'foreman', '~> 0.88.1'

# https://stackoverflow.com/questions/71191685/visit-psych-nodes-alias-unknown-alias-default-psychbadalias
gem 'psych', '< 4'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
##gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootsnap', '~> 1.18', '>= 1.18.6'

# Cors
##gem 'rack-cors', '~> 1.1'
gem 'rack-cors', '~> 3.0'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'bullet'
  gem 'simplecov'
  gem 'simplecov-console'
  gem 'coveralls_reborn', '~> 0.28.0'
end

group :development do
  gem 'listen', '~> 3.9'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.1'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development, :test do
  gem 'rspec-rails', '~> 8.0'
end

group :test do
  gem 'factory_bot_rails', '~> 6.4', '>= 6.4.4'
  gem 'shoulda-matchers', '~> 6.5'
  gem 'faker'
  gem 'database_cleaner'
end

# https://github.com/ianheggie/health_check
gem "health_check"

group :production do
  gem 'newrelic_rpm'
end
