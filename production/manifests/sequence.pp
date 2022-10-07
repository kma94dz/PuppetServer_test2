# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::sequence
class production::sequence {
########## exemple 1
### forcer un sequencement de creation de 3 fichiers  
$directoryPath = ['/tmp/dir1/', '/tmp/dir1/dir2/', '/tmp/dir1/dir2/dir33/']

file { '/tmp/dir1/dir2/dir33/part1.txt':
  ensure => present,
  before => File[['/tmp/dir1/dir2/dir33/part2.txt', '/tmp/dir1/dir2/dir33/part3.txt']],
  require => File[$directoryPath],
}
file { ['/tmp/dir1/dir2/dir33/part2.txt', '/tmp/dir1/dir2/dir33/part3.txt']:
  ensure => present,
}
file { $directoryPath:
  ensure => 'directory',
}
}
