file { '/tmp/fromGithub2.txt':
  ensure => present,
  content => 'from git hub',
}
