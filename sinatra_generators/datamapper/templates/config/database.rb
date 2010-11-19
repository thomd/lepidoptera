require 'dm-core'
require 'dm-migrations'
require File.dirname(__FILE__) + '/../models'

DataMapper.setup(:default, (ENV["DATABASE_URL"] || {
  :database => '<%= name %>',
  :adapter  => 'sqlite3'
}))

DataMapper.auto_upgrade!
