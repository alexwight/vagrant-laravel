vagrant-laravel-plugins
=======================

Vagrant Plugin for interacting with laravel installations

## Usage

Once the plugin is installed (`vagrant plugin install vagrant_laravel`),
simply add the location of your box laravel installation to your config,
e.g.

    config.laravel.install_path = "/var/www"

You can then run `vagrant artisan <args>` and `vagrant composer <args>` from within your host.
