Vagrant.configure("2") do |config|
  config.vm.hostname = "fetch-berkshelf"
  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest

  config.vm.define "centos" do |centos|
    centos.vm.box = "opscode-centos-6.5"
    centos.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_centos-6.5_chef-provisionerless.box"
    centos.vm.hostname = "centos"
    centos.vm.provision :chef_solo do |chef|
      chef.json = {
      }

      chef.run_list = [
        "recipe[fetch::default]",
        "recipe[fetch::test]"
      ]
    end
  end

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "ubuntu-12.04-amd64"
    ubuntu.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-12.04_chef-provisionerless.box"
    ubuntu.vm.hostname = "ubuntu"
    ubuntu.vm.provision :chef_solo do |chef|
      chef.json = {
      }

      chef.run_list = [
        "recipe[fetch::default]",
        "recipe[fetch::test]"
      ]
    end
  end
end
