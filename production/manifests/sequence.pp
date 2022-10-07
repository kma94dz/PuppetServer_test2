$directoryPath = ['/tmp/dir1/', '/tmp/dir1/dir2/', '/tmp/dir1/dir2/dir3/']

file { '/tmp/dir1/dir2/dir3/part1.txt':
  ensure => present,
  before => File[['/tmp/dir1/dir2/dir3/part2.txt', '/tmp/dir1/dir2/dir3/part3.txt']],
  require => File[train::parser('hello')],
}
file { ['/tmp/dir1/dir2/dir3/part2.txt', '/tmp/dir1/dir2/dir3/part3.txt']:
  ensure => present,
}
file { $directoryPath:
  ensure => 'directory',
}
}
