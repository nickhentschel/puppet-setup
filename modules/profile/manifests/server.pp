# /etc/puppet/modules/profile/manifests/server.pp

class profile::server {
  class{ '::nginx':
    repo_enable    => hiera('nginx::repo_enable'),
    service_enable => hiera('nginx::service_enable'),
    service_status => hiera('nginx::service_status'),
    hasrestart     => hiera('nginx::hasrestart'),
  }
  # class{ '::jekyll': }
  class{ '::php':
    php_version        => hiera('php::version'),
    php_prefix         => hiera('php::prefix'),
    php_service_prefix => hiera('php::service_prefix'),
  }
}
