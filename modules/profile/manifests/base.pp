# /etc/puppet/modules/profile/manifests/base.pp

class profile::base {

  $base_packages = hiera_array('base_packages')
  package { $base_packages:
    ensure => installed,
  }

  users { base: }
  include ntp
}
