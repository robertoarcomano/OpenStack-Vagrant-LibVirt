OPENSTACK_USER = "openstack"

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.provider :libvirt do |libvirt|
    libvirt.memory = 16384
    libvirt.cpus   = 4
  end
  config.vm.provision "shell" do |s|
    s.path = "script.sh"
  end
  config.vm.define "openstack"
  config.vm.hostname = "openstack"
end
