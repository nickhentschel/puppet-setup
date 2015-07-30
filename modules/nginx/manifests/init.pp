# /etc/puppet/modules/nginx/manifests/init.pp

class nginx($repo_enable, $service_enable, $service_status, $hasrestart) {
  class{'nginx::repo': } ->
  class{'nginx::install': } ->
  class{'nginx::config': } ~>
  class{'nginx::service': } ->
  Class['nginx']
}
