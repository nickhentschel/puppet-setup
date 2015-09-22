# /etc/puppet/modules/phpfpm/manifests/init.pp

class phpfpm {
  class{ 'phpfpm::install' }
}
