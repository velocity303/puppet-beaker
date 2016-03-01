class beaker::params {
  if $::osfamily == 'Debian' {
    $beaker_packages = ['ruby-dev', 'libxml2-dev', 'libxslt1-dev', 'g++', 'zlib1g-dev']
  }
  elsif $::osfamily == 'RedHat' {
    $beaker_packages = ['gcc', 'gcc-c++', 'libxml2-devel', 'libxslt-devel', 'ruby-devel']
  }
  else {
    notify { "OS family ${osfamily} not supported":}
  }
}
