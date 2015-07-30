# /etc/puppet/modules/nginx/manifests/service.pp

class nginx::service {
  service { 'nginx':
    ensure     => $nginx::service_status,
    enable     => $nginx::service_enable,
    hasrestart => $nginx::hasrestart,
  }
}
