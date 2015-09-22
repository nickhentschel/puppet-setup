# /etc/puppet/modules/phpfpm/manifests/service.pp

class phpfpm::service {
  service { 'php-fpm':
    ensure  => 'running',
    enable  => true,
  }
}
