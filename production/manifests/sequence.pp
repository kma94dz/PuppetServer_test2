# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::sequence
class train::sequence {
$directoryPath = '/tmp/a/b/c/d/'
$part1path = '/tmp/a/part1.txt'
$part2path = '/tmp/a/b/c/part3.txt'
$part3path = '/tmp/a/b/c/d/part4.txt'

file { $part1path:
  ensure => present,
  require => File[ path_to_array($directoryPath) ],
  content => String( $facts['hardware'] ),
  #content => String( path_to_array($directoryPath) ),
}
file { [$part2path, $part3path]:
  ensure => present,
  require => File[$part1path],
}
file { path_to_array($directoryPath):
  ensure => 'directory',
}

file { '/opt/puppetlabs/puppet/cache/lib/facter/':
  ensure => 'directory',
}
file { '/opt/puppetlabs/puppet/cache/lib/facter/hardware.rb':
  ensure => present,
  require => File[ '/opt/puppetlabs/puppet/cache/lib/facter/' ],
  source => 'puppet:///lib/facter/hardware.rb',
}
file { '/tmp/a/part55.txt':
  ensure => present,
  require => File[ '/opt/puppetlabs/puppet/cache/lib/facter/hardware.rb' ],
  content => String( $facts['hardware'] ),
  #content => String( path_to_array($directoryPath) ),
}


/**
si debian.... a faire
exec { 'noop':
  command =>"usr/bin/puppet agent --noop"
}
**/
}
