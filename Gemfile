source 'https://rubygems.org'

gem 'rails', '~> 5.0.0', '>= 5.0.0.1'

gem 'jbuilder', '~> 2.5'
gem 'redis', '~> 3.0'
gem 'turbolinks'

group :assets do
  gem 'jquery-rails'
  gem 'sass-rails'
  gem 'uglifier'
  gem 'coffee-rails'
  gem 'therubyracer', platforms: :ruby
end

group :test do
  gem 'shoulda-matchers'
  gem 'capybara'
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'byebug', platform: :mri
end

group :production do
  gem 'pg'
  gem 'puma'
  gem 'rails_12factor'
end

gem 'aasm'
gem 'faker'
gem 'figaro'
gem 'sorcery'
gem 'versionist'
gem 'rack-cors', :require => 'rack/cors'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
