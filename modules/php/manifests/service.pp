# /etc/puppet/modules/phpfpm/manifests/service.pp

class php::service (
  $php_service_prefix = 'php'
){
  service { "${php_service_prefix}-fpm":
    ensure => 'running',
    enable => true,
  }
}
