# /etc/puppet/modules/roles/manifests/webserver.pp

class role::webserver {
  include profile::base
  include profile::server
}
