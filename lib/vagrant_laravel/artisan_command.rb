require "vagrant"

module VagrantLaravel
  class Command < Vagrant.plugin(2, :command)
    def execute
        ARGV.shift()
        with_target_vms() do |machine|
            puts `vagrant ssh -c "php #{machine.config.laravel.install_path}/artisan #{ARGV.join(" ")}"`
        end
    end
  end
end