# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::appach_install
class train::appach_install {
if $facts['os']['family'] == 'Debian'{
package { 'apache2':
  ensure => installed,
}
service { 'apache2':
  ensure => running,
}
}
if $facts['os']['family'] == 'Redhat' {
  if $facts['os']['distro']['release']['major']>='20'{
    package { 'httpd22':
      ensure => installed,
    }
    service { 'httpd22':
      ensure => running,
    }
  }
}
}
