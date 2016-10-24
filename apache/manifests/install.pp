class apache::install($package){
	
	package{ $package:
		ensure => present,

	}
}