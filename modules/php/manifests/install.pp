# /etc/puppet/modules/php/manifests/install.pp

class php::install(
  $php_version = 'installed',
  $php_prefix  = 'php',
){
  package { "${php::install::php_prefix}-fpm":
    ensure => $php::install::php_version,
  }

  package { "${php::install::php_prefix}-cli":
    ensure => $php::install::php_version,
  }

  package { "${php::install::php_prefix}-common":
    ensure => $php::install::php_version,
  }

  package { "${php::install::php_prefix}-pdo":
    ensure => $php::install::php_version,
  }

  package { "${php::install::php_prefix}-opcache":
    ensure => $php::install::php_version,
  }
}
