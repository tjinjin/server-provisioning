# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define :web01 do |web01|
    web01.vm.box = 'dummy'
    web01.vm.box_url = 'https://raw.githubusercontent.com/mitchellh/vagrant-web01/master/dummy.box'
    web01.vm.provider :web01 do |ci, override|
      aws.access_key_id = ENV['ci_ACCESS_KEY_ID']
      aws.secret_access_key = ENV['ci_SECRET_ACCESS_KEY']
      aws.region = 'ap-northeast-1'
      aws.instance_type = 't2.micro'
      aws.ami = 'xxx'
      aws.subnet_id = 'subnet-436c9834'
      aws.security_groups = ENV['ci_SG_GROUP']
      aws.keypair_name = 'circleci'
      aws.tags = { 'Name' => 'vagrant' }
      aws.instance_ready_timeout = 180
      aws.block_device_mapping = [
        {
          'DeviceName' => '/dev/sda1',
          'Ebs.DeleteOnTermination' => true
        }
      ]
      override.ssh.username = 'root'
      override.ssh.private_key_path = '~/.ssh/id_ec2'
    end
  end

  config.vm.define :web02 do |web02|
    web02.vm.box = "gce"

    config.vm.provider :google do |gcp, override|
      gcp.google_project_id = "project-id"
      gcp.google_client_email = "client_email"
      gcp.google_json_key_location = "key_location"

      gcp.name = "hogehoge"
      gcp.zone = "asia-east1-a"
      gcp.machine_type = "n1-standard-1"
      gcp.image = ""
      gcp.disk_size = "10"
      override.ssh.username = 'root'
      override.ssh.private_key_path = '~/.ssh/id_ec2'
  end
end
