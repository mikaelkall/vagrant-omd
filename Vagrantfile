# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  
  config.vm.box = "centos6-puppet"

  config.vm.define :server do |server_config|
      server_config.package.name = "nagios-omd-server"
      server_config.vm.host_name = "nagios-omd-server"
      #server_config.vm.network"public_network", :bridge => "en0: Wi-Fi (AirPort)", :type => "dhcp"
      #server_config.vm.network "private_network", type: "dhcp", :adapter => 2
      #server_config.vm.network "forwarded_port", guest: 80, host: 8888
      server_config.vm.network "forwarded_port", guest: 80, host: 8081
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'puppet/manifests'
    puppet.manifest_file = 'site.pp'
    puppet.module_path = 'puppet/modules'
    puppet.hiera_config_path = "hiera.yaml"
  end
end
