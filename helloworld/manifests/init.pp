# == Class: helloworld
#
# This class is a bare bones example to ensure puppet master/clients are
# talking to each other.
#
# === Parameters
#
# === Actions
#
# === Requires
#
# === Sample Usage
#
# class { 'helloworld': }
#
class helloworld {

  file { '/var/tmp/hello.txt':
    owner   => 'root',
    group   => 'root',
    mode    => '0666',
    source  => "puppet:///modules/helloworld/hello.txt"
  }

}
