# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::sequence
class production::sequence {
########## exemple 1
### forcer un sequencement de creation de 3 fichiers  
########## exemple 2
### forcer un sequencement de creation de 3 fichiers  
file { '/tmp/dir1/dir2/dir3/part111.txt':
  ensure => present,
  before => File[['/tmp/dir1/dir2/dir3/part222.txt', '/tmp/dir1/dir2/dir3/part333.txt']],
  require => File[['/tmp/dir1/', '/tmp/dir1/dir2/', '/tmp/dir1/dir2/dir3/']],
}
file { ['/tmp/dir1/dir2/dir3/part222.txt', '/tmp/dir1/dir2/dir3/part333.txt']:
  ensure => present,
}
file { ['/tmp/dir1/', '/tmp/dir1/dir2/', '/tmp/dir1/dir2/dir3/']:
  ensure => 'directory',
}
}
