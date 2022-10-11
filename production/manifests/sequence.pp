# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::sequence
class train::sequence {
$directoryPath = '/tmp/dira/dirb/dirc/dird/'

file { '/tmp/dira/dirb/dirc/part1.txt':
  ensure => present,
  before => File[ ['/tmp/dira/dirb/dirc/dird/part2.txt', '/tmp/dira/dirb/dirc/dird/part3.txt'] ],
  require => File[$directoryPath],
  content => String(path_to_array($directoryPath)),
}
file { ['/tmp/dira/dirb/dirc/dird/part2.txt', '/tmp/dira/dirb/dirc/dird/part3.txt']:
  ensure => present,
}
file { path_to_array($directoryPath):
  ensure => 'directory',
}
}
