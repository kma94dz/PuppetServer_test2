include production::sequence
include production::appach_install
file { '/tmp/fromGithub2.txt':
  ensure => present,
  content => 'from git hub',
}
