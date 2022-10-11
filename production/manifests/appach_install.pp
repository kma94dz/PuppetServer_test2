# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::appach_install
class train::appach_install {
exec { 'apt-update':
  command => '/usr/bin/apt-get update',
}
package { 'apache2':
  require => Exec['apt-update'],
  ensure => installed,
}
service { 'apache2':
  ensure => running,
}
}
