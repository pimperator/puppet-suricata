class suricata::install {

  package { $suricata::packageName:
    ensure => @enabled ? {
      true: installed,
      default: absent,
    },
  }
}
