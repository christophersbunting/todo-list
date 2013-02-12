source :rubygems
gem 'sinatra'
gem 'dm-postgres-adapter'
gem 'data_mapper'
gem 'dm-timestamps'
gem 'rack-flash'
gem 'sinatra-redirect-with-flash'

group :development do
gem 'dm-sqlite-adapter'
gem 'heroku'
end

require 'sinatra'  
require 'data_mapper'
require 'sinatra/flash'  
require 'sinatra/redirect_with_flash'  
require 'rubygems'
require 'dm-timestamps'
require 'dm-postgres-adapter'

enable :sessions

DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/supportLog.db")