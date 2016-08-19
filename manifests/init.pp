class suricata (
  $active    = false,
  $interface = $suricata::params::interface,
) inherits suricata::params {
  validate_bool($active)
  validate_string($interface)

  class { 'suricata::prepare': } ->
  class { 'suricata::install': } ->
  class { 'suricata::config': } ~>
  class { 'suricata::service': } ->
  Class['suricata']
}
