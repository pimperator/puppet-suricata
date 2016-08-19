class suricata::service {
	service {'suricata': 
		ensure => $enabled ? {
			true    => running,
			false   => stopped,
			default => undef,
		},
		enable => true,
		hasstatus => true,
		hasrestart => true,
	}
}
