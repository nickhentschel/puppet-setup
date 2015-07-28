# /etc/puppet/modules/profile/manifests/base.pp

class profile::base {

  $base_packages = hiera_array('base_packages')
  package { $base_packages:
    ensure => installed,
  }

  user { 'nhentschel':
    ensure     => present,
    comment    => 'Nicholas Hentschel',
    uid        => 1000,
    managehome => true,
    groups     => ['wheel', 'puppet'],
  }

  include ntp
}
