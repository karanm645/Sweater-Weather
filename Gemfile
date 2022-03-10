source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.2"
gem "rails", "~> 7.0.2", ">= 7.0.2.2"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"

gem "bcrypt", "~> 3.1.7"

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

# for api consumption
gem 'faraday'
gem 'jsonapi-serializer'
# gem "image_processing", "~> 1.2"
# gem "rack-cors"

group :development, :test do
  gem 'figaro'
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'pry'
  gem 'rspec-rails'
  gem 'shoulda-matchers', '~> 5.0'
  gem 'simplecov'
  gem 'vcr'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end
group :test do
  gem 'webmock'
end

