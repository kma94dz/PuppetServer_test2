# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::sequence
class train::sequence {
########## on peut reecrir comme suit
$directoryPath = '/tmp/a/b/c/dir4/'

file { '/tmp/a/b/c/part1.txt':
  ensure => present,
  require => File[path_to_array($directoryPath)],
  content => String(path_to_array($directoryPath)),
}
$array = path_to_array($directoryPath)
file { $array[0]:
  ensure => 'directory',
}
}
