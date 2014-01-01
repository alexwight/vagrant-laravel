module VagrantLaravel

  class Config < Vagrant.plugin("2", :config)
    attr_accessor :install_path

    def initialize()
      @install_path = UNSET_VALUE
    end

    def finalize!
      @install_path = "/var/www" if @install_path == UNSET_VALUE
    end
  end
end