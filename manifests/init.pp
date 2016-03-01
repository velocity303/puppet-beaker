class beaker (
  $beaker_packages = $::beaker::params::beaker_packages,
  Array $jenkins_users = ['jenkins-slave'],
) inherits beaker::params {
  package { $beaker_packages:
    ensure => present,
  }
  package { 'beaker':
    ensure   => present,
    provider => gem,
    require  => Package[$beaker_packages],
  }
}
