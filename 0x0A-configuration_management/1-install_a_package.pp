# Installs puppet-lint version 1.1.0
package { 'puppet-lint':
  ensure   => '2.1.0',
  provider => 'gem',
}
