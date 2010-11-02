$:.unshift(File.dirname(__FILE__)) unless $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
require 'rubigen'


module Butterfly

  # Current version
  VERSION = '0.1.0'

  # path of build-in code generators
  GENERATORS_PATH = File.join(File.dirname(__FILE__), '..', '*_generators')

  # path of user code generators
  USER_PATH = File.join(Dir.user_home, '.butterfly', '*_generators')



  # Error handling
  class GeneratorError < StandardError
  end

  class GeneratorSourceMissingError < StandardError
  end



  # Generator
  class CodeGenerators
    
    attr_accessor :generators
    
    def initialize
      @generators = []

      # loop through build in code generators and user code generators
      [GENERATORS_PATH, USER_PATH].each do |path|
        Dir[path].each do |file|
          @generators.push(GeneratorGroup.new(file)) if File.directory?(file)
        end
      end
    end
    
    # returns array of generator-group names
    def names
      generators.map{ |generator| generator.name }
    end

    # returns array of generator-group sources
    def sources
      generators.map{ |generator| generator.source }      
    end
    
    # returns generator source for a given generator-group
    def source_of(name)
      selected = generators.select { |n| n.name == name }
      if selected.length == 0
        raise Butterfly::GeneratorSourceMissingError
      else
        selected[0].source
      end
    end
    
    # returns array of generator-types for a given generator-group
    def types_of(name)
      selected = generators.select { |n| n.name == name }
      if selected.length == 0
        []
      else
        selected[0].types
      end
    end
    
    
    # a generator-group contains a generator name, its path and its generator-types
    class GeneratorGroup
      
      attr_accessor :name, :source, :types, :label
      
      def initialize(file)
        @name = File.basename(file).gsub(/_generators$/, '')
        @source = RubiGen::PathSource.new(:app, file)
        @types = @source.names(:visible)
        @label = @source.label
      end
    end
    
  end
end



# adding colored output
module RubiGen
  class SimpleLogger
    def log(status, message, &block)

      # define some status colors
      status_color = {
        :exists => RED, 
        :identical => BLUE, 
        :create => GREEN
      }

      @out.print("#{status_color[status.to_sym]}%12s#{WHITE}  %s%s\n" % [status, '  ' * @level, message]) unless quiet
      indent(&block) if block_given?
    end
  end
end