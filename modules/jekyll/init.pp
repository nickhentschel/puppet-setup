# /etc/puppet/modules/jekyll/init.pp

class jekyll {
  class{'jekyll::install': }
}
