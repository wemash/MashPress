service "mysql" do
  supports :restart => true, :start => true, :stop => true
  action :nothing
end

template "/etc/mysql/conf.d/vwd_my.cnf" do
  source "vwd_my.cnf.erb"
  mode "0644"
  notifies :restart, "service[mysql]", :delayed
end
