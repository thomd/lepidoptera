$:.unshift(File.dirname(__FILE__)) unless $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module Butterfly

  VERSION = '0.1.0'

  class GeneratorError < StandardError; end

  class Generator
    
  end

end

