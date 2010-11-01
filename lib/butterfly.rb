$:.unshift(File.dirname(__FILE__)) unless $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
require 'rubigen'


module Butterfly

  # Current version
  VERSION = '0.1.0'

  # path of build-in code generators
  GENERATORS_PATH = File.join(File.dirname(__FILE__), '..', '*_generators')

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
      Dir[GENERATORS_PATH].each do |file|
        @generators.push(GeneratorGroup.new(file)) if File.directory?(file)
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



# overwrite filtered_sources to change folder of user code generators
module RubiGen
  module Lookup
    module ClassMethods
      def filtered_sources(filters)
        new_sources = []
        new_sources << PathFilteredSource.new(:user, "#{Dir.user_home}/.butterfly/", *filters)
        new_sources
      end
    end
  end
end

