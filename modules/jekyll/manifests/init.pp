# /etc/puppet/modules/jekyll/manifests/init.pp

class jekyll {
  class{'jekyll::install': }
}
