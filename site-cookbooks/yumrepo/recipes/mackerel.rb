yum_repository "mackerel" do
  url "http://yum.mackerel.io/centos/$basearch"
  action :add
  gpgkey 'https://mackerel.io/assets/files/GPG-KEY-mackerel'
end
