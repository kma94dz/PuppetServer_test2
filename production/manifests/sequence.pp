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
  #content => String( checkversion($facts['os']['release']['major'],"8") ),
  content => String( path_to_array($directoryPath) ),
}
file { [$part2path, $part3path]:
  ensure => present,
}
file { path_to_array($directoryPath):
  ensure => 'directory',
}
/**
si debian.... a faire
exec { 'noop':
  command =>"usr/bin/puppet agent --noop"
}
**/
}
