# data-mapper models
#
# for documentation: http://datamapper.org/getting-started 
#
require 'dm-core'
require 'dm-validations'

class Item
  include DataMapper::Resource

  property :id,         Serial
  property :item,       String
  property :created_at, DateTime

  validates_presence_of :item
end
