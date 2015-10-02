require 'rubygems'
require 'optparse'

module VagrantWinssh
  class Command < Vagrant.plugin(2, :command)
    def which(cmd)
      exts = ENV['PATHEXT'] ? ENV['PATHEXT'].split(';') : ['']
      ENV['PATH'].split(File::PATH_SEPARATOR).each do |path|
        exts.each { |ext|
          exe = File.join(path, "#{cmd}#{ext}")
          return exe if File.executable?(exe) && !File.directory?(exe)
        }
      end
      return nil
    end

    def execute
      ssh_path = which("ssh")
      if ssh_path.nil?
        @env.ui.error "Couldn't find an SSH binary"
      else
        @env.ui.success "Tada: #{ssh_path}"
      end
    end
  end
end
