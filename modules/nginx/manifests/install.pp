# /etc/puppet/modules/nginx/manifests/install.pp

class nginx::install {
  package { 'nginx':
    ensure => present,
  }
}
