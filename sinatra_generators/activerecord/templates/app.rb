require "rubygems"
require "sinatra"
require "active_record"
require 'haml'


# Database Object Model

ActiveRecord::Base.establish_connection(:adapter  => "sqlite3", :database => "<%= name.pluralize %>.sqlite3")

class Migrate < ActiveRecord::Migration
	def self.up
		create_table :<%= name.pluralize %> do |t|
			t.text :body
			t.string :title
		end
	end
	
	def self.down
		drop_table :<%= name.pluralize %>s
	end
end

class <%= name.classify %> < ActiveRecord::Base
end

Migrate.up unless <%= name.classify %>.table_exists?


# Controller

get '/' do
	@<%= name.pluralize %> = <%= name.classify %>.find(:all)
	haml :index
end

post '/' do
		<%= name.classify %>.delete(<%= name.classify %>.find(:first)) until <%= name.classify %>.count(:all) < 5
		@<%= name %> = <%= name.classify %>.new(:title => params[:title], :body => params[:body])
		@<%= name %>.save
		redirect '/'
end
