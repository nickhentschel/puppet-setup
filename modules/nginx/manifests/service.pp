# /etc/puppet/modules/nginx/manifests/service.pp

class nginx::service($ensure, $enable, $hasrestart) {
  service { 'nginx':
    ensure     => $ensure,
    enable     => $enable,
    hasrestart => $hasrestart,
    require    => Package['nginx']
  }
}
