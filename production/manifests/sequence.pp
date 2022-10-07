# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::sequence
class production::sequence {
########## on peut reecrir comme suit
$directoryPath = ['/tmp/dir1/', '/tmp/dir1/dir2/', '/tmp/dir1/dir2/dir3/']

file { '/tmp/dir1/dir2/dir3/part1.txt':
  ensure => present,
  before => File[['/tmp/dir1/dir2/dir3/part2.txt', '/tmp/dir1/dir2/dir3/part3.txt']],
  require => File[$directoryPath],
  content => parser('hello'),
}
file { ['/tmp/dir1/dir2/dir3/part2.txt', '/tmp/dir1/dir2/dir3/part3.txt']:
  ensure => present,
}
file { $directoryPath:
  ensure => 'directory',
}
}
