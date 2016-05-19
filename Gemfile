source 'https://rubygems.org'
group :development do
  gem 'rails_layout'
  gem 'better_errors' #Gem for better error page
  gem 'binding_of_caller' #Gem with better
end
gem 'bootstrap-sass'
gem 'rolify', '~> 5.1'
gem 'pundit', '~> 1.1.0'

gem 'i18n', '0.6.11'

gem 'rails_admin', '~> 0.8.1'
#Gem for users
gem 'devise', '~> 3.5.6'

gem 'rails', '4.1.4'

### OpenShift Online changes:

# Fix the conflict with the system 'rake':
gem 'rake', '~> 0.9.6'

# Support for databases and environment.
# Use 'sqlite3' for testing and development and mysql and postgresql
# for production.
#
# To speed up the 'git push' process you can exclude gems from bundle install:
# For example, if you use rails + mysql, you can:
#
# $ rhc env set BUNDLE_WITHOUT="development test postgresql"
#
group :development, :test do
  gem 'mysql2', '~> 0.3.18'
  gem 'minitest'
  gem 'thor'
end

# Add support for the MySQL
group :production, :mysql do
  gem 'mysql2', '~> 0.3.18'
end

### / OpenShift changes

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
group :development do
  gem 'sdoc', '~> 0.4.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
