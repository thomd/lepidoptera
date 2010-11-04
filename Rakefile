#
# generate gemspec file
#
# usage:
#   rake -T 
#
begin
  require 'jeweler'
  require File.dirname(__FILE__) + '/lib/butterfly'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "butterfly"
    gemspec.version = Butterfly::VERSION
    gemspec.summary = "a life-enhancing code generator for everyday use"
    gemspec.description = "Butterfly is a very simple and easy extensible code generator for common every day projects."
    gemspec.email = "thomduerr@gmail.com"
    gemspec.homepage = "http://github.com/thomd/butterfly/"
    gemspec.authors = ["Thomas Duerr"]
    gemspec.executables = ["butterfly"]
    gemspec.add_dependency "rubigen", ">= 1.5.5"
    gemspec.add_dependency "git", ">= 1.2.5"
    gemspec.add_development_dependency "jeweler", ">= 1.4.0"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end
