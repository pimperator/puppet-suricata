class suricata::params {
  case $::osfamily {
    /^(Debian|RedHat)$/: {
      $interface = 'eth0'
    }
    default: {
      fail("${::operatingsystem} not supported!")
    }
  }
}
