class StaticGenerator < Butterfly::Base
  
  def manifest
    record do |m|

      # installation skeleton (intermediate directories are automatically created).
      %w(
        public/css
        public/js
        public/images
      ).each { |path| m.directory path }

      # Create file stubs
      %w(
        config.ru
        README.md
        public/index.html
        public/css/main.css
        public/js/app.js
      ).each { |file| m.template file, file }
    end
  end

end