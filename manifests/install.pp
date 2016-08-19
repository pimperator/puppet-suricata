class suricata::install {

  package {'suricata': 
    ensure => $enabled ? {
      true    => installed,
      default => absent,
    },
  }
}
