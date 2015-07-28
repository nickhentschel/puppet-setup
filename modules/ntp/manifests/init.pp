# /etc/puppet/modules/ntp/manifests/init.pp

class ntp ($servers, $enable, $ensure) {
  package { 'ntp':
    ensure => 'latest',
  }

  service { 'ntp':
    ensure => $ensure,
    enable => $enable,
    name   => 'ntpd',
  }

  file { '/etc/ntp.conf':
    ensure  => file,
    notify  => Service['ntpd'],
    content => template('ntp/ntp.conf.erb'),
    owner   => '0',
    group   => '0',
    replace => true,
    mode    => '0644',
  }
}
