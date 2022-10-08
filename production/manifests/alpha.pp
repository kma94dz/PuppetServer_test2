# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::alpha
class production::alpha {
file { '/tmp/fromGithubClass.txt':
  ensure => present,
  content => 'from git hub and frm a class',
}
}
