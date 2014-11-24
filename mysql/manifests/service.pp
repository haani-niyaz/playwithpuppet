class mysql::service($service_enabled, $service_running){
	
	service{'csqmysql5':
		ensure 		 => $service_running,
		hasstatus  => true,
		hasrestart => true,
		enabled    => $service_enabled,
		require    => Class['mysql::config'] 

	}
}