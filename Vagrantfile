# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.hostname = "ldata"

  config.vm.box = "ubuntu/xenial64"

  config.vm.network :forwarded_port, guest: 3000, host: 3000 # Rails
  config.vm.network :forwarded_port, guest: 3001, host: 3001 # Rails
  config.vm.network :forwarded_port, guest: 3002, host: 3002 # Rails
  config.vm.network :forwarded_port, guest: 3003, host: 3003 # Rails
  config.vm.network :forwarded_port, guest: 3004, host: 3004 # Rails
  config.vm.network :forwarded_port, guest: 3005, host: 3005 # Rails
  config.vm.network :forwarded_port, guest: 8983, host: 8983 # Solr 5.4
  config.vm.network :forwarded_port, guest: 8984, host: 8984 # Fedora 4.5
  config.vm.network :forwarded_port, guest: 8985, host: 8985 # Fedora 4.5
  config.vm.network :forwarded_port, guest: 8986, host: 8986 # Fedora 4.5
  config.vm.network :forwarded_port, guest: 8987, host: 8987 # Fedora 4.5
  config.vm.network :forwarded_port, guest: 8988, host: 8988 # Fedora 4.5
  config.vm.network :forwarded_port, guest: 8989, host: 8989 # Fedora 4.5
  config.vm.network :forwarded_port, guest: 8990, host: 8990 # Fedora 4.5
  config.vm.network :forwarded_port, guest: 8991, host: 8991 # Fedora 4.5

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
  end

  shared_dir = "/vagrant"

  config.vm.provision "shell", path: "./install_scripts/bootstrap.sh", args: shared_dir
  config.vm.provision "shell", path: "./install_scripts/java.sh", args: shared_dir
  config.vm.provision "shell", path: "./install_scripts/ruby.sh", args: shared_dir
  config.vm.provision "shell", path: "./install_scripts/fits.sh", args: shared_dir, privileged: false
  config.vm.provision "shell", path: "./install_scripts/demo-app.sh", args: shared_dir, privileged: false
  config.vm.provision "shell", path: "./install_scripts/extras.sh", args: shared_dir

end
