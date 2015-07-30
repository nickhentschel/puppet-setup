# /etc/puppet/modules/ntp/manifests/service.pp

class ntp::service {
  service { 'ntp':
    ensure    => $ntp::ensure,
    enable    => $ntp::enable,
    name      => 'ntpd',
    subscribe => Class['ntp::config'],
  }
}
