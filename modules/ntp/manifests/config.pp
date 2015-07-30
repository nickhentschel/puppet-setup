# /etc/puppet/modules/ntp/manifests/config.pp

class ntp::config {
  $servers = $ntp::servers

  file { '/etc/ntp.conf':
    ensure  => file,
    content => template('ntp/ntp.conf.erb'),
    owner   => '0',
    group   => '0',
    replace => true,
    mode    => '0644',
    notify  => Class['ntp::service'],
  }
}
