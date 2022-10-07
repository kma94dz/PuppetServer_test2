# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::sequence
class production::sequence {
########## exemple 1
### forcer un sequencement de creation de 3 fichiers
#part1.txt puis part2.txt et enfin part3.txt
#d'abord on creer le fichier part1.txt  
file { '/tmp/part1.txt':
  ensure => present,
}
file { '/tmp/part2.txt':
  ensure => present,
  require => File['/tmp/part1.txt'],#le fichier part2.txt doit attendre la creation de part1.txt
  ##on peut faire:
  #before => File['/tmp/part3.txt'],#le fichier part2.txt est creer avant part3.txt
}
file { '/tmp/part3.txt':
  ensure => present,
  require => File['/tmp/part2.txt'],#le fichier part3.txt doit attendre la creation de part2.txt
}

#on peut l'ecrire differament
########## exemple 2
### forcer un sequencement de creation de 3 fichiers  
file { '/tmp/part1.txt':
  ensure => present,
  before => File[['/tmp/part2.txt', '/tmp/part3.txt']],#on creer part1 avant part1 et 2
}
file { ['/tmp/part2.txt', '/tmp/part3.txt']:#un array permt de faire une loop por creer part2 puis part3
  ensure => present,
}

########## exemple 3
#s'assurer que le path existe vraiment avant de creer les fichiers
file { '/tmp/dir1/dir2/dir3/part1.txt':
  ensure => present,
  before => File[['/tmp/dir1/dir2/dir3/part2.txt', '/tmp/dir1/dir2/dir3/part3.txt']],# doit etre avant part1 et 2
  require => File[['/tmp/dir1/', '/tmp/dir1/dir2/', '/tmp/dir1/dir2/dir3/']],# pour creer part1 en premier, on s'assure que le path existe(ou le creer si existe pas)
}
file { ['/tmp/dir1/dir2/dir3/part2.txt', '/tmp/dir1/dir2/dir3/part3.txt']:
  ensure => present,
}
file { ['/tmp/dir1/', '/tmp/dir1/dir2/', '/tmp/dir1/dir2/dir3/']:# on loop pour creer le path
  ensure => 'directory',
}

########## on peut reecrir comme suit
$directoryPath = ['/tmp/dir1/', '/tmp/dir1/dir2/', '/tmp/dir1/dir2/dir3/']

file { '/tmp/dir1/dir2/dir3/part1.txt':
  ensure => present,
  before => File[['/tmp/dir1/dir2/dir3/part2.txt', '/tmp/dir1/dir2/dir3/part3.txt']],
  require => File[train::parser('hello')],
}
file { ['/tmp/dir1/dir2/dir3/part2.txt', '/tmp/dir1/dir2/dir3/part3.txt']:
  ensure => present,
}
file { $directoryPath:
  ensure => 'directory',
}
}
