class profile::app_steam {

  # https://steamcdn-a.akamaihd.net/client/installer/steam.deb

  # include wget
  # include gdebi
  #
  # wget::fetch { 'steam.deb':
   #  source      => 'https://steamcdn-a.akamaihd.net/client/installer/steam.deb',
   #  destination => '/tmp/',
   #  cache_dir   => '/var/cache/wget',
  # } ~>
  # package { 'steam':
	# 	provider => gdebi,
	# 	ensure	=> latest,
	# 	source => '/tmp/steam.deb',
	# }

  package { 'steam':
      # ensure => latest,
      ensure => purged,
  }

  package { 'steamcmd':
      # ensure => latest,
      ensure => purged,
  }


  # file { '/usr/bin/steam':
  #   ensure  => file,
 	# 	owner	=> root,
		# group	=> root,
		# mode	=> '755',
  #   source  => "puppet:///modules/profile/steam/steam",
  #   subscribe => Package['steam']
  # }
  #
  #
  # # Remove the update notifier to prevent pop-up on all users.
  # file { 'steam-update-notifier':
  #   ensure => absent,
  #   path => '/var/lib/update-notifier/user.d/steam-install-notify',
  #   subscribe => Package['steam'],
  # }

}
