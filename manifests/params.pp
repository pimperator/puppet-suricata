class suricata::params {
  case $::osfamily {
    'Debian': {
      $interface = 'eth0'
    }
    'RedHat': {
      $interface = 'eth0'
    }
    default: {
      fail("${::operatingsystem} not supported!")
    }
  }
}
