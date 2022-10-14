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
  command => '/usr/bin/shutdown -r now',
  unless => '/etc/rebooted',
}

