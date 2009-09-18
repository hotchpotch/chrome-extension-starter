
require 'pathname'

class ChromeExtensionStarter
  def initialize(argv)
    @target_name = argv.first
    if !@target_name
      warn "usage: chrome-extension-starter myextension"
      exit 1
    end
    @path = Pathname.new Dir.pwd
    @root_path = Pathname.new(__FILE__).parent
  end

  def run
    target_path = @path.join(@target_name)
    if target_path.exist?
      warn "#{@target_name} is already exist."
      exit 1
    end

    generate_templates(target_path, @root_path)
  end

  def generate_templates(name)
  end
end
