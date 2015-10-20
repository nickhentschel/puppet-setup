# /etc/puppet/modules/phpfpm/manifests/init.pp

class php ($php_version, $php_prefix, $php_service_prefix){
  class{ 'php::install':
    php_version => $php::php_version,
    php_prefix  => $php::php_prefix,
  }->
  class{ 'php::config': }~>
  class{ 'php::service':
    php_service_prefix => $php::php_service_prefix,
  }->
  Class['php']
}
