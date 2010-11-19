# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{lepidoptera}
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thomas Duerr"]
  s.date = %q{2010-11-19}
  s.default_executable = %q{lep}
  s.description = %q{Lepidoptera is a simple and easy to extend code generator for common every day projects.}
  s.email = %q{thomduerr@gmail.com}
  s.executables = ["lep"]
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".gitignore",
     "HISTORY.md",
     "README.md",
     "Rakefile",
     "bin/lep",
     "heroku_generators/sinatra/INFO",
     "heroku_generators/sinatra/sinatra_generator.rb",
     "heroku_generators/sinatra/templates/.gems",
     "heroku_generators/sinatra/templates/README.md",
     "heroku_generators/sinatra/templates/app.rb",
     "heroku_generators/sinatra/templates/config.ru",
     "heroku_generators/static/INFO",
     "heroku_generators/static/static_generator.rb",
     "heroku_generators/static/templates/README.md",
     "heroku_generators/static/templates/config.ru",
     "heroku_generators/static/templates/public/css/main.css",
     "heroku_generators/static/templates/public/index.html",
     "heroku_generators/static/templates/public/js/app.js",
     "jquery_generators/plugin/INFO",
     "jquery_generators/plugin/plugin_generator.rb",
     "jquery_generators/plugin/templates/demo.html",
     "jquery_generators/plugin/templates/js/jquery.plugin_name.js",
     "lepidoptera.gemspec",
     "lib/base.rb",
     "lib/butterfly.rb",
     "lib/options.rb",
     "lib/stub_generators/stub/INFO",
     "lib/stub_generators/stub/stub_generator.rb",
     "lib/stub_generators/stub/templates/generator-type_INFO",
     "lib/stub_generators/stub/templates/generator-type_README.txt",
     "lib/stub_generators/stub/templates/generator-type_generator.rb",
     "sinatra_generators/base/INFO",
     "sinatra_generators/base/base_generator.rb",
     "sinatra_generators/base/templates/Gemfile",
     "sinatra_generators/base/templates/app.rb",
     "sinatra_generators/base/templates/config.ru",
     "sinatra_generators/base/templates/public/css/main.css",
     "sinatra_generators/base/templates/public/js/app.js",
     "sinatra_generators/base/templates/views/index.haml",
     "sinatra_generators/base/templates/views/layouts/default.haml",
     "sinatra_generators/base/templates/views/style.sass",
     "sinatra_generators/datamapper/INFO",
     "sinatra_generators/datamapper/datamapper_generator.rb",
     "sinatra_generators/datamapper/templates/Gemfile",
     "sinatra_generators/datamapper/templates/app.rb",
     "sinatra_generators/datamapper/templates/config.ru",
     "sinatra_generators/datamapper/templates/config/database.rb",
     "sinatra_generators/datamapper/templates/models.rb",
     "sinatra_generators/datamapper/templates/public/css/main.css",
     "sinatra_generators/datamapper/templates/public/js/app.js",
     "sinatra_generators/datamapper/templates/views/index.haml",
     "sinatra_generators/datamapper/templates/views/layouts/default.haml",
     "sinatra_generators/datamapper/templates/views/style.sass"
  ]
  s.homepage = %q{http://github.com/thomd/lepidoptera/}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{a life-enhancing code generator for everyday use}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubigen>, [">= 1.5.5"])
      s.add_runtime_dependency(%q<git>, [">= 1.2.5"])
      s.add_development_dependency(%q<jeweler>, [">= 1.4.0"])
    else
      s.add_dependency(%q<rubigen>, [">= 1.5.5"])
      s.add_dependency(%q<git>, [">= 1.2.5"])
      s.add_dependency(%q<jeweler>, [">= 1.4.0"])
    end
  else
    s.add_dependency(%q<rubigen>, [">= 1.5.5"])
    s.add_dependency(%q<git>, [">= 1.2.5"])
    s.add_dependency(%q<jeweler>, [">= 1.4.0"])
  end
end

