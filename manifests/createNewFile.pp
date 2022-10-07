include production::alpha
include production::sequence
file { '/tmp/fromGithub2.txt':
  ensure => present,
  content => 'from git hub',
}
