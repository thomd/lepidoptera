require "rubygems"
require "sinatra"
require "active_record"
require 'haml'


# Database Object Model

ActiveRecord::Base.establish_connection(:adapter  => "sqlite3", :database => "<%= name %>.sqlite3")

class Migrate < ActiveRecord::Migration
	def self.up
		create_table :<%= name %>s do |t|
			t.text :body
			t.string :title
		end
	end
	
	def self.down
		drop_table :<%= name %>s
	end
end

class <%= name.camelize %> < ActiveRecord::Base
end

Migrate.up unless <%= name.camelize %>.table_exists?


# Controller

get '/' do
	@<%= name %>s = <%= name.camelize %>.find(:all)
	haml :index
end

post '/' do
		<%= name.camelize %>.delete(<%= name.camelize %>.find(:first)) until <%= name.camelize %>.count(:all) < 5
		@<%= name %> = <%= name.camelize %>.new(:title => params[:title], :body => params[:body])
		@<%= name %>.save
		redirect '/'
end
