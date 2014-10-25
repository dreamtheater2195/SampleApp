source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails',                '4.2.0.beta2'
gem 'sass-rails',           '>=5.0.0.beta1'
gem 'uglifier',             '2.5.3'
gem 'coffee-rails',         '4.0.1'
gem 'jquery-rails',         '3.1.2'
gem 'turbolinks',           '2.3.0'
gem 'jbuilder',             '2.1.3'
gem 'rails-html-sanitizer', '1.0.1'
gem 'sdoc',                 '0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'pg'
  gem 'byebug',      '3.4.0'
  gem 'spring',      '1.1.3'
end

group :test do
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace',     '0.1.3'
  gem 'guard-minitest',     '2.3.1'
end

group :production do
  gem 'pg'
  gem 'rails_12factor', '0.0.2'
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]
