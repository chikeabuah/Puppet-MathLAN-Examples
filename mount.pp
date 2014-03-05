# mount: a Puppet class for ensuring all MathLan NFSs are mounted

# Chike Abuah
# Department of Computer Science
# Grinnell College
# abuahchu@grinnell.edu

# created July 20, 2012
# last revised July 20, 2012

class mount {
  exec { 'mount /home':
    command => '/bin/mount /home',
    onlyif  => '/usr/bin/test ! '/bin/mountpoint /home'',
    cwd     => '/root',
    path    => ['/usr/bin', '/sbin', '/bin', '/usr/sbin', '/usr/local/sbin']
   }


  exec { 'mount /net':
    command => '/bin/mount /net',
    onlyif  => '/usr/bin/test ! '/bin/mountpoint /net'',
    cwd     => '/root',
    path    => ['/usr/bin', '/sbin', '/bin', '/usr/sbin', '/usr/local/sbin']
   }

  exec { 'mount /setup':
    command => '/bin/mount /setup',
    onlyif  => '/usr/bin/test ! '/bin/mountpoint /setup'',
    cwd     => '/root',
    path    => ['/usr/bin', '/sbin', '/bin', '/usr/sbin', '/usr/local/sbin']
   }

  exec { 'mount /var/mail':
    command => '/bin/mount /var/mail',
    onlyif  => '/usr/bin/test ! '/bin/mountpoint /var/mail'',
    cwd     => '/root',
    path    => ['/usr/bin', '/sbin', '/bin', '/usr/sbin', '/usr/local/sbin']
   }

} 

