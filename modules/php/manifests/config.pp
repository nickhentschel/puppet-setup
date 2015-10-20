# /etc/puppet/modules/phpfpm/manifests/config.pp

class php::config {
  file { '/etc/php-fpm.conf':
    ensure  => file,
    source  => 'puppet:///modules/php/php-fpm.conf',
    owner   => '0',
    group   => '0',
    replace => true,
    mode    => '0644',
    notify  => Class['php::service'],
  }

  file { '/etc/php.ini':
    ensure  => file,
    source  => 'puppet:///modules/php/php.ini',
    owner   => '0',
    group   => '0',
    replace => true,
    mode    => '0644',
    notify  => Class['php::service'],
  }

  file { '/etc/php-fpm.d/www.conf':
    ensure  => file,
    source  => 'puppet:///modules/php/www.conf',
    owner   => '0',
    group   => '0',
    replace => true,
    mode    => '0644',
    notify  => Class['php::service'],
  }

  file { '/etc/php.d/opcache.ini':
    ensure  => file,
    source  => 'puppet:///modules/php/opcache.ini',
    owner   => '0',
    group   => '0',
    replace => true,
    mode    => '0644',
    notify  => Class['php::service'],
  }
}
