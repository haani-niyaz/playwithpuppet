define apache::vhost($docroot,$port,$priority,$ssl=true,$serveraliases='',$template='apache/vhost.conf.erb'){
	include apache


	# $name var is the defition name
	file { "/etc/apache2/sites-available/${priority}-${name}":
		content => template($template),
		owner 	 => 'root',
		group 	 => 'root',
		mode		 => '0640',
		require  => Class['apache::install'],
		notify   => Class['apache::service'],
	}

	file { "/var/www/${name}":
		ensure  => directory,
		recurse => true,
		require => File["/etc/apache2/sites-available/${priority}-${name}"],
	}

	file { "/var/www/${name}/index.html":
		content => "This is the client1 site",
		require => File["/var/www/${name}"],
	}

}