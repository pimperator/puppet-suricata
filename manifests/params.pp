class suricata::params {
	case $::osfamily {
		'Debian': {
			$serviceName = 'suricata'
			$interface = 'eth0'
	}
		'RedHat': {
			$serviceName = 'suricata'
			$interface = 'eth0'
	}
	default: {
		fail("${::operatingsystem} not supported!")
	}
    }
}
