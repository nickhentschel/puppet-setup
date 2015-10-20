# /etc/puppet/modules/nginx/manifests/init.pp

class nginx($repo_enable, $service_enable, $service_status, $hasrestart) {
  class{'nginx::repo': } ->
  class{'nginx::install': } ->
  class{'nginx::config': } ~>
  class{'nginx::service':
    service_status => $nginx::service_status,
    service_enable => $nginx::service_enable,
    hasrestart     => $nginx::hasrestart,
  } ->
  Class['nginx']
}
