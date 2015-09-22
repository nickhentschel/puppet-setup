# /etc/puppet/modules/phpfpm/manifests/config.pp

class phpfpm::config {
  file { '/etc/php-fpm.conf':
    ensure  => file,
    source  => 'puppet:///modules/phpfpm/php-fpm.conf',
    owner   => '0',
    group   => '0',
    replace => true,
    mode    => '0644',
    notify  => Class['phpfpm::service'],
  }

  file { '/etc/php.ini':
    ensure  => file,
    source  => 'puppet:///modules/phpfpm/php.ini',
    owner   => '0',
    group   => '0',
    replace => true,
    mode    => '0644',
    notify  => Class['phpfpm::service'],
  }

  file { '/etc/php-fpm.d/www.conf':
    ensure  => file,
    source  => 'puppet:///modules/phpfpm/www.conf',
    owner   => '0',
    group   => '0',
    replace => true,
    mode    => '0644',
    notify  => Class['phpfpm::service'],
  }
}
