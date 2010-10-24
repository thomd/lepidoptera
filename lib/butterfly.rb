$:.unshift(File.dirname(__FILE__)) unless $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
require 'rubigen'


module Butterfly

  # Current version
  VERSION = '0.1.0'

  # Default options. Overriden by command-line options.
  DEFAULTS = {
    :quiet => false,
    :git => false
  }



  # Error handling
  class GeneratorError < StandardError
  end



  # Generator
  class CodeGenerators
    
    attr_accessor :generators, :path
    
    def initialize
      @generators = []
      @path = File.join(File.dirname(__FILE__), '..', '*_generators')
      Dir[@path].each do |file|
        @generators.push(Generator.new(file)) if File.directory?(file)
      end
    end
    
    def names
      generators.map{ |generator| generator.name }
    end

    def sources
      generators.map{ |generator| RubiGen::PathSource.new(:app, generator.path) }
      
    end
    
    # a generator contains a generator name and its path
    class Generator
      attr_accessor :name, :path
      def initialize(file)
        @name = File.basename(file).gsub(/_generators$/, '')
        @path = file
      end
    end
    
  end
end

