#include train::sequence
#include train::appach_install
#include train::mysql_install
#include train::php_install
file { '/tmp/fromGithub2.txt':
  ensure => present,
  content => extract_between_brackets('/a/b/c/'),
}