class <%= name.capitalize %>Generator < Butterfly::Base
  
  def manifest
    record do |m|

      # create folder
      m.directory ""

      # create templates
      m.template "README.txt", "README.md"
    end
  end

end

