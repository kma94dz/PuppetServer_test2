# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::php_install
class train::php_install {
if $facts['os']['family'] == 'Debian'{
  package { 'php':
  ensure => installed,
}
file { '/var/www/html/info.php':
  ensure => file,
  content => '<?php  phpinfo(); ?>',
  require => Package['apache2'],
}
}
}
