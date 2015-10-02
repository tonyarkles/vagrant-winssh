require 'vagrant'

module VagrantWinssh
  class Plugin < Vagrant.plugin("2")
    name "vagrant-winssh"
    description <<-DESC
Vagrant-winssh allows you to SSH into your virtual machines from Windows
without having to install any additional software into your PATH.
DESC

    command "winssh" do
      require_relative "command"
      Command
    end
  end

end
