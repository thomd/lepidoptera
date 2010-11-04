class PluginGenerator < Butterfly::Base
  
  def manifest
    record do |m|

      # Ensure appropriate generators folder exists
      m.directory "js"

      # Generator stub
      m.template "js/jquery.plugin_name.js", "js/jquery.#{@name}.js"
      m.template "demo.html", "demo.html"
    end
  end

end

