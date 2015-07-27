# /etc/puppet/modules/profile/manifests/base.pp

class profile::base {

  user { 'nhentschel':
    ensure     => 'present',
    comment    => 'Nicholas Hentschel',
    uid        => 1000,
    managehome => 'true',
    groups     => 'wheel',
  }

  include ntp
}
