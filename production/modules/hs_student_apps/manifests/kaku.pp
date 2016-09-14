class hs_student_apps::kaku {

	file { 'Kaku-linux64.zip':
		path	=> '/usr/local/bin/Kaku-linux64.zip',
		owner	=> root,
		group	=> root,
		mode	=> '644',
		ensure	=> present,
		source	=> 'puppet:///modules/hs_student_apps/kaku/Kaku-linux64.zip',
	}
	
	file { 'Kaku.png':
		path	=> '/usr/share/pixmaps/kaku.png',
		#owner	=> root,
		#group	=> root,
		#mode	=> '644',
		ensure	=> present,
		source	=> 'puppet:///modules/hs_student_apps/kaku/Kaku.png',
	}
	
	file { 'Kaku.desktop':
		path	=> '/usr/share/applications/Kaku.desktop',
		owner	=> root,
		group	=> root,
		mode	=> '644',
		ensure	=> present,
		source	=> 'puppet:///modules/hs_student_apps/kaku/Kaku.desktop',
	}
}
