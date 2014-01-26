# create VirtualHosts

prefix = node['apache_vhost']['config_prefix']

template "#{prefix}/wordpress.conf" do
  source 'vhost.erb'
  mode   '0440'
  owner  'root'
  group  'root'
  variables(
    :docroot    	=> node['apache_vhost']['wordpress']['DocumentRoot'],
    :serveradmin	=> node['apache_vhost']['wordpress']['ServerAdmin'],
    :servername		=> node['apache_vhost']['wordpress']['ServerName'],
    :serveralias	=> node['apache_vhost']['wordpress']['ServerAlias']
)
end
