
require 'pathname'
require 'fileutils'
require 'erb'

class ChromeExtensionStarter
  def initialize(argv)
    @target_name = argv.first
    if !@target_name
      warn "usage: chrome-extension-starter myextension"
      exit 1
    end
    @path = Pathname.new Dir.pwd
    @root_path = Pathname.new(__FILE__).parent.parent
  end

  def run
    target_path = @path.join(@target_name)
    if target_path.exist?
      warn "#{@target_name} is already exist."
      exit 1
    end

    generate_templates(target_path, @root_path.join('templates'))
  end

  def generate_templates(target_path, template_path)
    FileUtils.cp_r template_path.to_s, target_path.to_s
    Pathname.glob(target_path.to_s + "**/*") do |f|
      next unless f.file?
      f.open("r+") do |f|
        target_name = @target_name
        content = f.read
        f.rewind
        f.puts ERB.new(content).result(binding)
        f.truncate f.tell
      end
    end
  end
end
