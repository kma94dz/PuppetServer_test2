include production::sequence
include productionRedhat::appach_install
file { '/tmp/fromGithub2.txt':
  ensure => present,
  content => 'from git hub',
}
