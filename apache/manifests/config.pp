class apache::config{

	file { '/var/www/html/index.html':
		content => 'Hello World',
	}
}