yum_repository "mackerel" do
  url "http://yum.mackerel.io/centos/$basearch"
  action :add
end
