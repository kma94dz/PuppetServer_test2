# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::puppet_noop
class train::puppet_noop {
  if $facts['os']['family'] == 'Debian'{
      exec { 'go for noop':
        command => '/usr/bin/puppet agent --no-noop',
      }
  }
}
