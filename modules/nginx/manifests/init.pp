# /etc/puppet/modules/nginx/manifests/init.pp

class nginx {
  include nginx::service

  package { 'nginx':
    ensure      => present,
    configfiles => 'replace',
  }
}
