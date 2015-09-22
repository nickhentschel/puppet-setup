# /etc/puppet/modules/phpfpm/manifests/init.pp

class phpfpm {
  class{ 'phpfpm::install': }->
  class{ 'phpfpm::config': }~>
  class{ 'phpfpm::service': }->
  Class['phpfpm']
}
