# /etc/puppet/modules/phpfpm/manifests/install.pp

class phpfpm::install(
  $phpfpm_version = 'installed'
){
  package { 'php-fpm':
    ensure => $phpfpm::install::phpfpm_version,
  }

  package { 'php-cli':
    ensure => 'installed',
  }

  package { 'php-common':
    ensure => 'installed',
  }
}
