# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::sequence
class train::sequence {
$directoryPath = '/tmp/dirm1/dirm2/dirm3/dirm6/'
$part1path = '/tmp/dirm1/part1.txt'
$part2path = '/tmp/dirm1/dirm2/dirm3/part3.txt'
$part3path = '/tmp/dirm1/dirm2/dirm3/dirm6/part6.txt'

file { $part1path:
  ensure => present,
  before => File[ [$part2path, $part3path] ],
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
}
