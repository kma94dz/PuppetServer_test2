# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::sequence
class train::sequence {
########## on peut reecrir comme suit
$directoryPath = '/tmp/a/b/c/dir4/',

file { '/tmp/a/b/c/part1.txt':
  ensure => present,
  require => File[path_to_array($directoryPath)],
  before => File[ ['/tmp/a/b/c/d/part2.txt', '/tmp/a/b/c/d/part3.txt'] ],
  content => String(path_to_array($directoryPath)),
}
file { ['/tmp/a/b/c/d/part2.txt', '/tmp/a/b/c/d/part3.txt']:
  ensure => present,
  require => File['/tmp/a/b/c/part1.txt'],
}
$array = path_to_array($directoryPath),
file { $array:
  ensure => 'directory',
}
}
