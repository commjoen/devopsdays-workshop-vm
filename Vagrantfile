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
    ## USB settings needed for Testmasters bot
    vb.customize ["modifyvm", :id, "--usb", "on"]
    vb.customize ["modifyvm", :id, "--usbehci", "on"]
    vb.customize ["usbfilter", "add", "0", 
    "--target", :id, 
    "--name", "QinHeng Electronics USB2.0-Serial [0254]",
    "--vendorid", "1a86",
    "--productid", "7523",
    "--revision", "0254",
    "--remote", "no"]
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

  # Create folders
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/create-folders.sh'
    s.privileged = false
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

  # IntelliJ IDEA
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-intellij.sh'
    s.privileged = true
  end

  # IntelliJ IDEA user config
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-intellij-user.sh'
    s.privileged = false
  end

  # provision docker images
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/docker-images.sh'
    s.privileged = true
  end

  # provision MongoDB
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-mongodb.sh'
    s.privileged = false
  end

  # provision MongoDB
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-nodegoat.sh'
    s.privileged = false
  end

  config.vm.provision 'file', source: "assets/e2etest.js", destination: "/home/vagrant/Documents/workspace/NodeGoat/test/security/e2etest.js"

  # provision juiceshop
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-juiceshop.sh'
    s.privileged = false
  end

  # provision ZAP
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-zap.sh'
    s.privileged = false
  end

  # provision Hoverfly
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-hoverfly.sh'
    s.privileged = false
  end
  
  # provision Maven
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-maven.sh'
    s.privileged = false
  end

  # provision Docker Compose
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-docker-compose.sh'
    s.privileged = false
  end

  # provision vscode
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-vscode.sh'
    s.privileged = true
  end

  # fix permissions
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/fix-permissions.sh'
    s.privileged = true
  end

  # provision repos
  config.vm.provision 'shell' do |s|
    s.path = 'scripts/provision-workshop-repos.sh'
    s.privileged = false
  end
end
