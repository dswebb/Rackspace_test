default['apache_vhost']['config_prefix'] = '/etc/apache2/sites-enabled'
default['apache_vhost']['wordpress']['ServerAdmin'] = '',
default['apache_vhost']['wordpress']['ServerName'] = 'cms-deploy-test-lin'
default['apache_vhost']['wordpress']['ServerAlias'] = ['cms-deploy-test-lin', 'lin-test.rackstage.co.uk']
default['apache_vhost']['wordpress']['DocumentRoot'] = '/var/www/vhosts/lin-test.rackstage.co.uk/public_html'
#default['apache_vhost']['ServerName']        = 'cms-deploy-test-lin'
#default['apache_vhost']['ServerAlias']        = ['cms-deploy-test-lin', 'lin-test.rackstage.co.uk']
#default['apache_vhost']['DocumentRoot']        = '/var/www/vhosts/lin-test.rackstage.co.uk/public_html'
