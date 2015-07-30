# /etc/puppet/modules/ntp/manifests/init.pp

class ntp ($servers, $enable, $ensure) {
  class{'ntp::install': } ->
  class{'ntp::config': } ~>
  class{'ntp::service': } ->
  Class['ntp']
}
