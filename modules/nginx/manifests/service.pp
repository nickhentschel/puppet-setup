# /etc/puppet/modules/nginx/manifests/service.pp

class nginx::service($service_status, $service_enable, $hasrestart) {
  service { 'nginx':
    ensure     => $nginx::service::service_status,
    enable     => $nginx::service::service_enable,
    hasrestart => $nginx::service::hasrestart,
  }
}
