include train::sequence
#include train::puppet_noop
#include train::appach_install
#include train::mysql_install
#include train::php_install
#unit/acceptation..tests
#spec
#yaml
#hiera

exec { 'reboot once':
  command => '/usr/bin shutdown -r +5',
  unless => '/usr/bin/test -f /etc/rebootedCmdLaunched',
}
file { '/etc/rebootedCmdLaunched':
  ensure => present,
  require => Exec['reboot once'],
}

