# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::appach_install
class train::appach_install {
  if $facts['os']['family'] == 'Debian'{
    if checkversion($facts['os']['release']['major'],"18.04") == 1 {
      package { 'apache':
        ensure => installed,
      }
      service { 'apache':
      ensure => running,
      }
      file { '/tmp/OsVersionChecket.txt':
        ensure => present,
        content =>"verion is 18.04",
      }
    }
  }
}
