# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::sequence
class train::sequence {
$directoryPath = '/tmp/dir1/dir2/dir3/dir4/'

file { '/tmp/dir1/dir2/dir3/part1.txt':
  ensure => present,
  before => File[[$directoryPath'part2.txt', $directoryPath'part3.txt']],
  require => File[$directoryPath],
  content => String(path_to_array($directoryPath)),
}
file { [$directoryPath'part2.txt', $directoryPath'part3.txt']:
  ensure => present,
}
file { path_to_array($directoryPath):
  ensure => 'directory',
}
}
