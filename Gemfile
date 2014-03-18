source 'https://rubygems.org'
ruby '2.0.0'

gem 'puma', '2.8.1'
gem 'rails', '4.0.2'

# Form generation
gem 'simple_form', '~> 3.0.1'

# Frontend
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'haml-rails', '~> 0.5.3'

# API
gem 'jbuilder', '~> 1.2'

group :development, :test do
  gem "better_errors"
  gem 'foreman'
  gem 'debugger'
  gem "factory_girl_rails", "~> 4.3.0"
  gem "faker", "~> 1.2.0"
  gem "letter_opener", "~> 1.2.0"
end

group :production, :staging do
  gem 'rails_12factor'
  gem 'opbeat'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
