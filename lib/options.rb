$:.unshift(File.dirname(__FILE__)) unless $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
require 'rubigen'
require 'optparse'



# define global default option definitions
class OptionParser
  def add_default(opts)
    self.separator ""

#    self.on("-n", "--new", "Create a new Code Generator in ~/.butterfly") do
#      opts[:new] = true
#    end

    self.on("-q", "--quiet", "Suppress status output") do
      opts[:quiet] = true
    end

    self.on("-g", "--git","Create an empty git repository") do
      opts[:git] = true
    end

#    self.on("-s", "--svn [URL]","Create an empty git repository") do |url|
#      opts[:svn] = url
#    end

    self.on("-h", "--help", "Show help") do
      puts self
      exit
    end

    self.separator ""
    self.define_head "Version #{Butterfly::VERSION}"
    self.define_head "A life-enhancing code generator for everyday use."
    self.define_head ""
  end
end



module Butterfly
  module Options
  
    # Default options. Overriden by command-line options.
    OPTIONS = {
      :quiet => false,
      :git => false,
      :svn => false,
      :new => false
    }

    # parser class
    class Parser
      attr_accessor :generators
      
      def initialize(generators)
        @generators = generators
      end
      
      def parse(args)
        options = OPTIONS
        parser = OptionParser.new do |opts|
          opts.add_default(options)
        end
        parser.parse!(args)
        options
      end

      def show_groups
        parser = OptionParser.new do |opts|
          opts.banner = "Usage: #{PURPLE}#{File.basename($0)}#{WHITE} [options] #{BLUE}<generator-group>#{WHITE} <generator-type> <project-name>"
          opts.add_default(options = {})
          opts.separator "#{BLUE}Please choose a generator-group:#{WHITE}"
          opts.separator ""
          @generators.names.each do |name|
            opts.separator "    #{BLUE}#{name}#{WHITE}"
          end
        end
        parser.parse(["-h"]) 
        exit
      end

      def show_types(generator_group)
        parser = OptionParser.new do |opts|
          opts.banner = "Usage: #{PURPLE}#{File.basename($0)}#{WHITE} [options] #{PURPLE}#{generator_group}#{WHITE} #{BLUE}<generator-type>#{WHITE} <project-name>"
          opts.add_default(options = {})
          opts.separator "#{BLUE}Please choose a #{generator_group} generator-type:#{WHITE}"
          opts.separator ""
          @generators.types_of(generator_group).each do |type|
            opts.separator "    #{BLUE}#{type}#{WHITE}"
          end
        end
        parser.parse(["-h"])
        exit
      end

      def ask_for_project(generator_group, generator_type)
        parser = OptionParser.new do |opts|
          opts.banner = "Usage: #{PURPLE}#{File.basename($0)}#{WHITE} [options] #{PURPLE}#{generator_group}#{WHITE} #{PURPLE}#{generator_type}#{WHITE} #{BLUE}<project-name>#{WHITE}"
          opts.add_default(options = {})
          opts.separator "#{BLUE}Please enter a project-name!#{WHITE}"
        end
        parser.parse(["-h"])
        exit
      end

    end
  end
end