# create VirtualHosts

prefix = node['apache_vhost']['config_prefix']
@vhost_array = node['apache_vhost']['vhosts']

@vhost_array.each do |vhost| 
  template "#{prefix}/#{vhost}.conf" do
    source 'vhost.erb'
    mode   '0440'
    owner  'root'
    group  'root'
    variables(
      :docroot    => node['apache_vhost'][:vhost]['DocumentRoot'],
      :serveradmin     => node['apache_vhost'][:vhost]['ServerAdmin'],
      :servername     => node['apache_vhost'][:vhost]['ServerName'],
      :serveralias      => node['apache_vhost'][:vhost]['ServerAlias'],
    )
end
