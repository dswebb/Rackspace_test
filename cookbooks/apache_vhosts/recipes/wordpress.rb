# create VirtualHosts

template "#{prefix}/wordpress.conf" do
  source 'vhost.erb'
  mode   '0440'
  owner  'root'
  group  'root'
  variables(
    :docroot    	=> node['apache_vhost']['vhosts']['wordpress']['DocumentRoot'],
    :serveradmin	=> node['apache_vhost']['vhosts']['wordpress']['ServerAdmin'],
    :servername		=> node['apache_vhost']['vhosts']['wordpress']['ServerName'],
    :serveralias	=> node['apache_vhost']['vhosts']['wordpress']['ServerAlias']
)
end
