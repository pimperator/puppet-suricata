class suricata::service {
	service {'suricata': 
		ensure => $::suricata::active ? {
			true    => running,
			false   => stopped,
			default => undef,
		},
		#enable => true,
		hasstatus => true,
		hasrestart => true,
	}
}
