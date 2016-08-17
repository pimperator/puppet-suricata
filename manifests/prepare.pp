class suricata::prepare {
	package { 'ethtool':
		ensure => installed,
	}

	case $::osfamily {
		'Debian': {
			package {['libpcre3','libpcre3-dbg','libpcre3-dev']:
				ensure => installed,
				}
	}
		'RedHat': {
			package{'pcre':
				ensure => installed,
				}
	}

	exec { 'set_promiscuous_mode':
		command => "/sbin/ifconfig ${suricata::interface} promisc",
		unless  => "/sbin/ifconfig ${suricata::monitor_interface} | grep 'PROMISC'",
	}
}
