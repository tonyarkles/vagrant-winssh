require File.expand_path("../lib/vagrant-winssh/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "vagrant-winssh"
  s.version     = VagrantWinssh::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tony Arkles"]
  s.email       = ["BSD"]
  s.licenses    = ["BSD-3-Clause"]
  s.homepage    = "https://github.com/tonyarkles/vagrant-winssh"
  s.summary     = "Vagrant plugin with bundled Windows ssh"
  s.description = "Vagrant plugin with bundled Windows ssh"

  s.required_rubygems_version = ">= 1.4.0"

  s.files        = `git ls-files`.split("\n")
  s.require_path = 'lib'
end
