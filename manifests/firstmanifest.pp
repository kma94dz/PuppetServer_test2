 file { '/tmp/fromGithub.txt':
  ensure => present,
  content => 'from git hub changed',
}
