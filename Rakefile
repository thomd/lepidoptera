#
# generate gemspec file
#
# usage:
#   rake -T 
#
begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "butterfly"
    gemspec.version = "0.1.0"
    gemspec.summary = "common code generators"
    gemspec.description = "Butterfly provides some code generators for common web based projects like jquery, sinatra, etc..."
    gemspec.email = "thomduerr@gmail.com"
    gemspec.homepage = "http://github.com/thomd/butterfly/"
    gemspec.authors = ["Thomas Duerr"]
    gemspec.add_dependency "rubigen", ">= 1.5.5"
    gemspec.add_development_dependency "jeweler", ">= 1.4.0"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end
