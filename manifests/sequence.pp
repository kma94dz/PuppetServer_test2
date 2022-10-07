# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::sequence
class production::sequence {
file { '/tmp/part1.txt':
ensure => present,
}
file { '/tmp/part2.txt':
ensure => present,
require => file['/tmp/part1.txt'],
}
file { '/tmp/part3.txt':
ensure => present,
require => file['/tmp/part2.txt'],
}
}
