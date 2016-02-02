source 'https://rubygems.org'
ruby '2.2.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 5.0.0.beta1', '< 5.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', groups: [:development, :test]
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'pg', group: :production
gem 'rails_12factor', group: :production

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# Use Puma as the app server
gem 'puma'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Authentication
gem 'dotenv-rails', :groups => [:development, :test]
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'foyer', github: 'GaggleAMP/foyer', branch: 'rails5'

# Static Pages
gem 'high_voltage', github: 'thoughtbot/high_voltage', branch: 'master'

# Asset related libraries
gem 'bourbon', '<= 4.0.2'
gem 'neat', '<= 1.7.0'
gem 'gaggle-assets', '~> 1.0', source: 'https://Ahcm9rTQJHAmAwicSGyJ@gem.fury.io/me/'
gem 'formtastic', github: 'justinfrench/formtastic'
gem 'formtastic-bootstrap'
gem 'sass', '~> 3.4.5'
gem 'sass-rails'
gem 'font_assets'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # TESTING FRAMEWORK
  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
