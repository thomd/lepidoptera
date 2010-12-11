class ActiverecordGenerator < Butterfly::Base
  
  def manifest
    record do |m|

      # Create a directory including any missing parent directories.
      # Always skips directories which exist.
      m.directory "public/css"
      m.directory "public/images"
      m.directory "public/js"
      m.directory "views"

      # Generate a file using an ERuby template.
      # Looks up and evaluates a template by name and writes the result.
      #
      # The ERB template uses explicit trim mode to best control the
      # proliferation of whitespace in generated code.  <%- trims leading
      # whitespace; -%> trims trailing whitespace including one newline.
      #
      # A hash of template options may be passed as the last argument.
      # The options accepted by the file are accepted as well as :assigns,
      # a hash of variable bindings.  Example:
      #   template 'foo', 'bar', :assigns => { :action => 'view' }
      #
      # Template is implemented in terms of file.  It calls file with a
      # block which takes a file handle and returns its rendered contents.
      m.template "app.rb", "#{@name}.rb"

      m.template_copy_each %w(
        config.ru
        public/css/main.css
        views/index.haml
      )
      
      # Copy a file from source to destination with collision checking.
      #
      # The file_options hash accepts :chmod and :shebang and :collision options.
      # :chmod sets the permissions of the destination file:
      #   file 'config/empty.log', 'log/test.log', :chmod => 0664
      # :shebang sets the #!/usr/bin/ruby line for scripts
      #   file 'bin/generate.rb', 'script/generate', :chmod => 0755, :shebang => '/usr/bin/env ruby'
      # :collision sets the collision option only for the destination file:
      #   file 'settings/server.yml', 'config/server.yml', :collision => :skip
      #
      # Collisions are handled by checking whether the destination file
      # exists and either skipping the file, forcing overwrite, or asking
      # the user what to do.
#      m.file "models.rb", "models.rb"
      
      # Copy files from source to destination using the same path and name
      m.file_copy_each %w(
        Gemfile
      )
      
    end
  end

end

