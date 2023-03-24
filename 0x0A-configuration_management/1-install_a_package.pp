# Install a package using Puppet

exec { 'install flask':
  command => '/usr/bin/apt-get install -y flask'
}

exec { 'install puppet-lint':
  command => '/usr/bin/gem install puppet-lint -v 2.1.1'
}

package { 'flask':
  ensure => 'installed',
  before => Exec['install flask']
}

package { 'puppet-lint':
  ensure  => 'installed',
  before  => Exec['install puppet-lint'],
  require => Package['flask']
}
