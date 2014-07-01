# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.provider "virtualbox" do |v|
    v.name = "WebGoat"
  end

  config.vm.provision :shell,
    inline: "sudo -H -u vagrant /vagrant/setup.sh"

  config.vm.network "private_network", type: "dhcp"
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  # "Quick Start" config from https://github.com/fgrehm/vagrant-cachier#quick-start
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end
end
