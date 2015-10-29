# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
#  config.vm.define :web01 do |web01|
#    web01.vm.box = 'dummy'
#    web01.vm.box_url = 'https://raw.githubusercontent.com/mitchellh/vagrant-web01/master/dummy.box'
#    web01.vm.provider :web01 do |ci, override|
#      aws.access_key_id = env['ci_access_key_id']
#      aws.secret_access_key = env['ci_secret_access_key']
#      aws.region = 'ap-northeast-1'
#      aws.instance_type = 't2.micro'
#      aws.ami = 'xxx'
#      aws.subnet_id = 'subnet-436c9834'
#      aws.security_groups = env['ci_sg_group']
#      aws.keypair_name = 'circleci'
#      aws.tags = { 'name' => 'vagrant' }
#      aws.instance_ready_timeout = 180
#      aws.block_device_mapping = [
#        {
#          'devicename' => '/dev/sda1',
#          'ebs.deleteontermination' => true
#        }
#      ]
#      override.ssh.username = 'root'
#      override.ssh.private_key_path = '~/.ssh/id_ec2'
#    end
#  end

  config.vm.define :gcp do |gcp|
    gcp.vm.box = "gce"
    gcp.vm.box_url = "https://github.com/mitchellh/vagrant-google/raw/master/google.box"
    gcp.vm.synced_folder ".", "/vagrant", disabled: true

    gcp.vm.provider :google do |google, override|
      google.google_project_id = ENV['GCP_PROJECT_ID']
      google.google_client_email = ENV['GCP_EMAIL']
      google.google_json_key_location = ENV['GCP_KEY_LOCATION']
      #p12の場合はこっちで
      #google.google_key_location= ENV['GCP_KEY_LOCATION']

      google.name = "hogehoge"
      google.zone = "asia-east1-a"
      google.machine_type = "n1-standard-1"
      # image名はhttps://cloud.google.com/compute/docs/operating-systems/linux-os#centosを見て推測。
      google.image = "centos-6-v20140619"
      google.disk_size = "10"

      google.preemptible = true
      google.on_host_maintenance = "TERMINATE"

      google.auto_restart = false

      override.ssh.username = 'circleci'
      override.ssh.private_key_path = '~/.ssh/id_gcp_circle'
    end
  end
end
