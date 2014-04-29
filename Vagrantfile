Vagrant.configure("2") do |config|
  config.vm.box = "raring64"
  config.vm.box_url = "https://dl.dropboxusercontent.com/u/547671/thinkstack-raring64.box"

  # config.vm.network :private_network, ip: "192.168.56.101"
  #   config.vm.network :forwarded_port, guest: 80, host: 9090
  #   config.ssh.forward_agent = true

  # config.vm.provider :virtualbox do |v|
  #   v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  #   v.customize ["modifyvm", :id, "--memory", 1024]
  #   v.customize ["modifyvm", :id, "--name", "partsworld"]
  # end

  config.vm.provision :shell, :inline =>
    "if [[ ! -f /apt-get-run ]]; then sudo apt-get update && sudo touch /apt-get-run; fi"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path = "puppet/modules"
    puppet.options = ['--verbose']
  end

end
