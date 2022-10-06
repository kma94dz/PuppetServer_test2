 file { '/tmp/fromGithub.txt':
  ensure => present,
  content => 'from git hub changed',
}
if $OperatingSystem != 'Linux' { 
   warning('This manifest is not supported on this other OS apart from linux.') 
} else { 
   notify { 'the OS is Linux. We are good to go!': }
} 
