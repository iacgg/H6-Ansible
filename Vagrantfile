$script = <<-SCRIPT
echo "creation bootstrap user"
useradd -s /bin/bash -m -p bootstrap101 bootstrap
usermod -aG adm bootstrap
usermod -aG sudo bootstrap
echo -e "Bootstrap101\nBootstrap101" | passwd bootstrap
sed -i.bak  's/^PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
systemctl restart ssh
reboot
SCRIPT

Vagrant.configure("2") do |config|

  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--memory", "512", "--cpus", "1"]
    v.linked_clone = true
  end

  (1..2).each do |i|
    config.vm.define "haproxy0#{i}" do |haproxy|
      haproxy.vm.box = "ubuntu/bionic64"
      haproxy.vm.provision "shell", inline: $script
      haproxy.vm.network "private_network",
        ip: "192.168.50.1#{i}"
    end
  end

  (1..2).each do |i|
    config.vm.define "web0#{i}" do |web|
      web.vm.box = "ubuntu/bionic64"
      web.vm.provision "shell", inline: $script
      web.vm.network "private_network",
        ip: "192.168.50.2#{i}"
    end
  end

  (1..3).each do |i|
    config.vm.define "mysql0#{i}" do |mysql|
      mysql.vm.box = "ubuntu/bionic64"
      mysql.vm.provision "shell", inline: $script
      mysql.vm.network "private_network",
        ip: "192.168.50.3#{i}"
    end
  end

end
