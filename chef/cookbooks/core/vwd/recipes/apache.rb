link "/home/vagrant/sites" do
  to "/var/www"
end

# Add www-data to vagrant group
group "vagrant" do
  action :modify
  members 'www-data'
  append true
end

web_app "localhost" do
  template "localhost.conf.erb"
end

# We run as root so that we don't have to change the file permissions.
node.default["apache"]["user"] = "vagrant"
node.default["apache"]["group"] = "vagrant"

modules = [
  "cgi",
  "negotiation",
  "autoindex",
  "reqtimeout",
  "env",
  "setenvif",
  "auth_basic",
  "authn_file",
  "authz_default",
  "authz_groupfile",
  "authz_user"
]

modules.each do |mod|
  bash "disable_apache_module_#{mod}" do
    user "root"
    code <<-EOH
    a2dismod #{mod}
    EOH
    not_if { File.exists?("/etc/apache2/mods-enabled/#{mod}") }
  end
end

template "/etc/apache2/conf.d/vwd_apache.conf" do
  source "vwd_apache.conf.erb"
  mode "0644"
  notifies :restart, "service[apache2]", :delayed
end
