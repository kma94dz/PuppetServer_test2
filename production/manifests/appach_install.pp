# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::appach_install
class train::appach_install {
  if $facts['os']['family'] == 'Debian'{
    if checkversion($facts['os']['release']['major'],"18.04") == 1 {
      package { 'apache2':
        ensure => installed,
      }
      service { 'apache2':
        ensure => running,
      }
      file { '/tmp/OsVersionChecked.txt':
        ensure => present,
        content =>"verion is 18.04",
      }
    }
  }
  if $facts['os']['family'] == 'Redhat'{
    package { 'httpd':
      ensure => installed,
    }
    service { 'httpd':
      ensure => running,
    }
  }
}
