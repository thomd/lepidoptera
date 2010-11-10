class StubGenerator < Butterfly::Stub::Base
  
  def manifest
    record do |m|

      # create templates folder
      m.directory "templates"

      # create templates
      m.template "generator-type_INFO", "INFO"
      m.template "generator-type_generator.rb", "#{name}_generator.rb"
      m.template "generator-type_README.txt", "templates/README.txt"
    end
  end

end

