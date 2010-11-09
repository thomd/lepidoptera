
module Butterfly

  # extend Base class wwith base functionality for all butterfly generators
  class Base < RubiGen::Base

    attr_reader :target, :name, :author, :gitinit, :group

    def initialize(runtime_args, runtime_options = {})
      super
      @destination_root = File.expand_path(args.shift)
      @name = base_name
      @author = ENV['USER']
      @gitinit = runtime_options[:gitinit]
      @target = @destination_root
      @group = @destination_root.match(/\/(\w+)_generators\//)[1]
    end

    # do some final things after generation
    def after_generate
      git_init if @gitinit
      info_message
    end

    protected

    # create an empty git repository and commit generated files
    def git_init
      require 'git'
      begin
        g = Git.open(@destination_root)
        logger.exists '.git'
      rescue ArgumentError
        g = Git.init(@destination_root)
        g.add(@destination_root)
        g.commit("beginning of #{@name} project")
        logger.create '.git'
      end
    end

    # Read INFO from file in generator base path.
    def info_message
      info = File.read(File.join(spec.path, 'INFO')) rescue ''
      template = ERB.new(info, nil, '<>')
      puts "\n#{template.result(binding)}"
    end
  
  end

end