class SinatraGenerator < Butterfly::Base
  
  def manifest
    record do |m|

      # Ensure appropriate generators folder exists
      m.directory ""

      # Generator stub
      m.template "app.rb", "#{@name}_app.rb"
      m.template "config.ru", "config.ru"
      m.template "README.md", "README.md"
      m.file ".gems", ".gems"
    end
  end

end

