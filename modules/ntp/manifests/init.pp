# /etc/puppet/modules/ntp/manifests/init.pp

class ntp {
  package { 'ntp':
    ensure => 'latest',
  }

  service { 'ntpd':
    ensure => 'running',
    enable => 'true',
  }

  $ntp_servers = hiera_array('ntp::servers')

  file { '/etc/ntp.conf':
    ensure  => 'present',
    content => template('ntp/ntp.conf.erb'),
    owner   => 'root',
    group   => 'root',
    replace => 'true',
    mode    => '0644',
  }
}
