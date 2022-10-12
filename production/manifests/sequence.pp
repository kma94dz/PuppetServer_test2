# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::sequence
class train::sequence {
$directoryPath = '/tmp/dirm1/dirm2/dirm3/dirm4/'
$part1path = '/tmp/dirm1/part5.txt'
$part2path = '/tmp/dirm1/dirm2/dirm3/part3.txt'
$part3path = '/tmp/dirm1/dirm2/dirm3/dirm4/part4.txt'

file { $part1path:
  ensure => present,
  before => File[ [$part2path, $part3path] ],
  require => File[$directoryPath],
  content => "toto is back",
}
file { [$part2path, $part3path]:
  ensure => present,
}
file { path_to_array($directoryPath):
  ensure => 'directory',
}
}
