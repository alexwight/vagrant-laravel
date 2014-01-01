begin
  require "vagrant"
rescue LoadError
  raise "This plugin must be run from within Vagrant."
end

if Vagrant::VERSION < "1.2.0"
  raise "This plugin is only compatible with Vagrant 1.2+"
end


module VagrantLaravel
  class Plugin < Vagrant.plugin("2")

    name "Vagrant Laravel Plugin"

    command "artisan" do
      require_relative "artisan_command"
      Command
    end

    command "composer" do
      require_relative "composer_command"
      Command
    end

    config "laravel" do
      require_relative "config"
      Config
    end
  end
end