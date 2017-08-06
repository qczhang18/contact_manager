source 'https://rubygems.org'

git_source(:github) do |repo_name|
end

gem 'rails', '~> 5.1.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'bullet'
end

group :development, :test do
  gem 'dotenv-rails'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'coderay'
  gem 'factory_girl_rails'
  gem 'faker'
end

group :test do
  gem 'capybara'
end

group :production do
  gem 'rails_12factor'
  gem 'rack-attack'
end
