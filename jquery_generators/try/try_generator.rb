class TryGenerator < Butterfly::Base
  def manifest
    record do |m|
      m.directory "js"
      m.template "js/try.js", "js/#{@name}.js"
      m.template "demo.html", "demo.html"
    end
  end
end

