# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::mysql_install
class train::mysql_install {
if $facts['os']['family'] == 'Debian'{
package { 'mysql-server':
  ensure => installed,
}
service { 'mysql':
  ensure => running,
}
}
}
