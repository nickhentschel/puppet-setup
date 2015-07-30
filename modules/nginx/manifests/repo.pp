# /etc/puppet/modules/nginx/manifests/repo.pp

class nginx::repo {
  yumrepo { 'nginx':
    ensure   => present,
    descr    => 'nginx official repo',
    baseurl  => 'http://nginx.org/packages/centos/$releasever/$basearch/',
    enabled  => true,
    gpgcheck => false,
  }
}
