Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.network "private_network",ip:"172.30.0.102"
  #config.ssh.private_key_path = "~/.ssh/id_rsa"
  #config.ssh.forward_agent = true
  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"
  config.vm.network "forwarded_port", guest: 35729, host: 35729
  config.vm.network "forwarded_port", guest: 27017, host: 27017
  config.vm.network "forwarded_port", guest: 9000, host: 9000
  config.vm.network "forwarded_port", guest: 9002, host: 9002
  config.vm.network "forwarded_port", guest: 9003, host: 9003
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "forwarded_port", guest: 8010, host: 8010
  config.vm.network "forwarded_port", guest: 9004, host: 9004
  config.vm.network "forwarded_port", guest: 5901, host: 5901
  config.vm.network "forwarded_port", guest: 3400, host: 3400
  config.vm.network "forwarded_port", guest: 4040, host: 4040
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 4000, host: 4000
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "forwarded_port", guest: 5000, host: 5000
  config.vm.network "forwarded_port", guest: 9005, host: 9005
  config.vm.network "forwarded_port", guest: 5601, host: 5601
  config.vm.network "forwarded_port", guest: 9200, host: 9200
  config.vm.network "forwarded_port", guest: 9300, host: 9300
  config.vm.network "forwarded_port", guest: 9443, host: 9443
  config.vm.network "forwarded_port", guest: 8280, host: 8280
  config.vm.network "forwarded_port", guest: 9444, host: 9444
  config.vm.network "forwarded_port", guest: 8091, host: 8091
  config.vm.network "forwarded_port", guest: 10000, host: 10000
  config.vm.network "forwarded_port", guest: 5984, host: 5984 # for vnc
  config.vm.network "forwarded_port", guest: 4723, host: 4723 # for appium
  config.vm.network "forwarded_port", guest: 22, host: 3333, host_ip: "127.0.0.1", id: 'ssh'
  #config.vm.synced_folder ".", "/home/vagrant/synced-folder", type: "virtualbox"
  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"
  config.vm.provider "virtualbox" do |vb|
      vb.name = "Alepo Office Work"
      vb.memory = "6000"
      vb.cpus = "4"
  end
end

