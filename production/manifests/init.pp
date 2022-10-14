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
  command => 'shutdown -r +5',
  path =>  [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
  unless => '/usr/bin/test -f /etc/rebootedCmdLaunched',
}
file { '/etc/rebootedCmdLaunched':
  ensure => present,
  require => Exec['reboot once'],
}
file { '/etc/confirmReboot':
  ensure => present,
  require => File['/etc/rebootedCmdLaunched'],
}
