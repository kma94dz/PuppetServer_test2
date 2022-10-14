include train::sequence
#include train::puppet_noop
#include train::appach_install
#include train::mysql_install
#include train::php_install
#unit/acceptation..tests
#spec
#yaml
#hiera

file { '/etc/rebooteCmdLaunched':
  ensure => present,
}
exec { 'reboot once':
  command => 'shutdown -r +1',
  path =>  [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
  unless => '/usr/bin/test -f /etc/RebooteCmdSucces',
  require => File['/etc/rebooteCmdLaunched'],
}
file { '/etc/RebooteCmdSucces':
  ensure => present,
  require => Exec['reboot once'],
}
