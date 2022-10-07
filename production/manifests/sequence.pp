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
file { '/tmp/part11.txt':
  ensure => present,
  before => File[['/tmp/part22.txt', '/tmp/part33.txt']]
}
file { ['/tmp/part22.txt', '/tmp/part33.txt']:
  ensure => present,
}
}
