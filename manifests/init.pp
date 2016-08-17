class suricata (
	$enabled      = false,
	$packageName = $suricata::params::packageName,
	$serviceName = $suricata::params::serviceName,
	$interface = $suricata::params::interface,
) inherits suricata::params {
	validate_bool($enabled)
	validate_string($package_name)
	validate_string($service_name)
	validate_string($interface)

	class { 'suricata::prepare': } ->
	class { 'suricata::install':} ->
	class { 'suricata::config':} ~>
	class { 'suricata::service':} ->
	Class['suricata']	
}
