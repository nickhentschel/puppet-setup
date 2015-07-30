# /etc/puppet/modules/nginx/manifests/config.pp

class nginx::config {
  file { '/etc/nginx/nginx.conf':
    ensure  => file,
    content => template('nginx/nginx.conf.erb'),
    owner   => '0',
    group   => '0',
    replace => true,
    mode    => '0644',
    notify  => Class['ntp::service'],
  }
}
