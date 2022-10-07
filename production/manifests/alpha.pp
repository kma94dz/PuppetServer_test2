# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::alpha
class train::alpha {
file { '/tmp/fromGithub2.txt':
  ensure => present,
  content => 'from git hub',
}
}
