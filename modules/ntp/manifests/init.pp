# /etc/puppet/modules/ntp/manifests/init.pp

class ntp {
  package { 'ntp':
    ensure => 'latest',
  }

  service { 'ntpd':
    ensure => 'running',
    enable => 'true',
  }

  file { '/etc/ntp.conf':
    ensure  => 'present',
    source  => 'puppet:///modules/ntp/ntp.conf',
    owner   => 'root',
    group   => 'root',
    replace => 'true',
    mode    => '0644',
  }
}
