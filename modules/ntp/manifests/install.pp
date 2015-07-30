# /etc/puppet/modules/ntp/manifests/install.pp

class ntp::install {
  package { 'ntp':
    ensure => 'latest',
  }
}
