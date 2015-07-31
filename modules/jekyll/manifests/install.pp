# /etc/puppet/modules/jekyll/manifests/install.pp

class jekyll::install {
  package { 'rubygems':
    ensure => present,
  }

  package { 'ruby':
    ensure => present,
  }

  package {'jekyll':
    ensure   => latest,
    provider => 'gem',
    require  => Package['rubygems', 'ruby'],
  }

  package { 'kramdown':
    ensure   => present,
    provider => 'gem',
    require  => Package['jekyll'],
  }
}
