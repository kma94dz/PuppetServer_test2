file { '/tmp/fromGithubDefault.txt':
  ensure => present,
  content => 'from git hub default',
}
