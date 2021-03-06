class eclipse::install($source, $target='c:\\dev\\eclipse\\') {

	require 7zip

	notify {'Installing Eclipse...':}
	
	exec { "7z.exe x -o$target $source":
		cwd => 'c:\\Program Files\\7-Zip\\',
		creates => "$target",
		path => 'c:\\Program Files\\7-Zip\\',
	}
}