# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::appach_install
class train::appach_install {
  if $facts['os']['family'] == 'Debian'{
    exec { 'go to noop':
      command => '/usr/bin/puppet agent --noop',
    }
  }
}
