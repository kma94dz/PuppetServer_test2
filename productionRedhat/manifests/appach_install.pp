# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::appach_install
class train::appach_install {
# execute 'apt-get update'
exec { 'dnf-update':                    # exec resource named 'apt-update'
  command => '/usr/bin/dnf update'  # command this resource will run
}

# install apache2 package
package { 'apache2':
  require => Exec['dnf-update'],        # require 'apt-update' before installing
  ensure => installed,
}

# ensure apache2 service is running
service { 'apache2':
  ensure => running,
}
}
