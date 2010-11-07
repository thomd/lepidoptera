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
    gemspec.name = "lepidoptera"
    gemspec.version = Butterfly::VERSION
    gemspec.summary = "a life-enhancing code generator for everyday use"
    gemspec.description = "Lepidoptera is a very simple and easy extensible code generator for common every day projects."
    gemspec.email = "thomduerr@gmail.com"
    gemspec.homepage = "http://github.com/thomd/lepidoptera/"
    gemspec.authors = ["Thomas Duerr"]
    gemspec.executables = ["lep"]
    gemspec.add_dependency "rubigen", ">= 1.5.5"
    gemspec.add_dependency "git", ">= 1.2.5"
    gemspec.add_development_dependency "jeweler", ">= 1.4.0"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end
