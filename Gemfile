source 'https://rubygems.org'
ruby '2.2.3'

# sass powered bootstrap
gem 'bootstrap-sass'
gem 'autoprefixer-rails'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# need my haml
gem 'haml-rails'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# boot for forms
gem 'bootstrap_form'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby


# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'
# dumping turbolinks for jquery-turbolinks
gem 'jquery-turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# for deployment to heroku
gem 'paratrooper'
# figaro not needed for secret_key_base
gem 'figaro'

# encryption, and needed for password_digest
gem 'bcrypt'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# heroku recommended app server
  gem 'puma'
  gem 'rack-timeout'
# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Response to alerts from git-hub
 gem 'loofah', '~> 2.2.1'

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'
  # go really fast -don't want spring
  gem 'zeus'
  # catch some errors
  gem 'pry'
  gem 'pry-byebug'

end

group :test do
  # time to do some testing
  gem 'rspec-rails'
  # lets build something to test
  gem 'fabrication'
  # need some data populated
  gem 'faker'
  # what they all want
  gem 'cucumber-rails', require: false
  # some high level testing
  gem 'capybara'
  # test through the browser
  gem 'launchy'
  # testing pages with javascript (, { js:true } forces browser activity)
  gem 'selenium-webdriver', '>= 2.45'
  # cleans up database so selenium-webdriver works correctly
  gem 'database_cleaner'
  # get fancy with cucumber
  gem 'page-object'
end

group :production, :staging do
  gem 'pg'
  gem 'rails_12factor'
end
