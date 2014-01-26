# create VirtualHosts

prefix = node['apache_vhosts']['config_prefix']

node['apache_vhosts']['vhosts'].each do |vhost| 
  template "#{prefix}/#{vhost}.conf" do
    source 'vhost.erb'
    mode   '0440'
    owner  'root'
    group  node['root_group']
    variables(
      :docroot    => node['apache_vhost'][vhost]['DocumentRoot'],
      :serveradmin     => node['apache_vhost'][vhost]['ServerAdmin'],
      :servername     => node['apache_vhost'][vhost]['ServerName'],
      :serveralias      => node['apache_vhost'][vhost]['ServerAlias'],
    )
end
