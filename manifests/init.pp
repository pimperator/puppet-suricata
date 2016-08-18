class suricata (
  $enabled      = false,
  $interface = $suricata::params::interface,
) inherits suricata::params {
  validate_bool($enabled)
  validate_string($interface)

  class { 'suricata::prepare': } ->
  class { 'suricata::install': } ->
  class { 'suricata::config': } ~>
  class { 'suricata::service': } ->
  Class['suricata']
}
