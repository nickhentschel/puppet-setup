class profiles::base {
  # common users
  users { 'common': }

  # sshd config
  include profiles::ssh::server

  # base firewall config
  include profiles::firewall::setup

  # common packages needed everywhere
  package {[ 'vim', 'sudo', 'tmux', 'git' ]:
    ensure => latest,
  }

  # set locale
  class { 'locales':
    default_locale => 'en_US.UTF-8',
    locales        => ['en_US.UTF-8 UTF-8'],
  }
}