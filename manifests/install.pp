class suricata::install {

  package {'suricata': 
    ensure => $::suricata::active ? {
      true    => installed,
      default => absent,
    },
  }
}
