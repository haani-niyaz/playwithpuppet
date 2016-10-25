class apache::service($package){

	service{ $package :
		ensure 		=> running,
		hasstatus 	=> true,
		hasrestart 	=> true,
		enable		=> true,
	}
}