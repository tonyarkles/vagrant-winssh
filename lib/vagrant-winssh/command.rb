require 'rubygems'
require 'optparse'

module VagrantWinssh
  class Command < Vagrant.plugin(2, :command)
    def execute
      @env.ui.success "Tada!"
    end
  end
end
