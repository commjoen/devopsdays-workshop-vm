Vagrant.configure(2) do |config|
  config.vm.box = "boxcutter/ubuntu1604-desktop"

  config.vm.provider "virtualbox" do |vb|
  	# Display the VirtualBox GUI when booting the machine
  	vb.gui = true
  	# Customize the amount of memory on the VM:
  	vb.memory = "3096"
  	vb.cpus = 2
	  vb.customize ["modifyvm", :id, "--nictype1", "virtio"]
    vb.customize ["modifyvm", :id, "--accelerate3d", "off"]
    vb.customize ["modifyvm", :id, "--vram", "128"]
  end

  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  config.vm.provision 'shell' do |s|
    s.path = '00_init.sh'
    s.privileged = true
  end

  config.vm.provision 'file' do |s|
      s.source = 'generics/zshrc.template'
      s.destination = '~/.zshrc'
  end

  # JDK
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-jdk.sh'
    s.privileged = true
  end

  # NodeJS
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-node.sh'
    s.privileged = true
  end

  # Kill user session to force load of PATH env var
  config.vm.provision 'shell' do |s|
    s.inline = "pkill -u vagrant"
  end

  # Docker
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-docker.sh'
    s.privileged = true
  end

  # Atom
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-atom.sh'
    s.privileged = true
  end

  # Chrome
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-chrome.sh'
    s.privileged = true
  end

  # provision docker images
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/docker-images.sh'
    s.privileged = true
  end

  # provision MongoDB
  # provision docker images
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-mongodb.sh'
    s.privileged = true
  end

  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-nodegoat.sh'
    s.privileged = true
  end

  config.vm.provision 'shell' do |s|
    s.inline = "echo Finished provisioning, login with user vagrant pass vagrant"
  end

end
