class profile::blender {

  # include apt
  
  # apt::ppa { 'ppa:thomas-schiex/blender':
  #   ensure => absent,
  # }

  # package {'libopensubdiv':
  #   require => Package['blender'],
  # }

  package { 'blender':
    ensure  => "2.76.b+dfsg0-3build1",
    #require => [ Class['apt::update'], Apt::Ppa['ppa:thomas-schiex/blender'] ],
  }

  # Overwrite netrender addon to allow for use of GPU on slaves
  # https://github.com/WARP-LAB/Blender-Network-Render-Additions
  
  # fully managed directory: https://christian.hofstaedtler.name/blog/2008/11/puppet-managing-directories-recursively.html
  file { 'blender-netrender-addon':
    path    => '/usr/share/blender/scripts/addons/netrender',
    recurse => true,
    purge   => true,
    force   => true,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    ensure  => directory,
    require => Package['blender'],
    source  => 'puppet:///modules/hs_student_apps/blender/Blender-Network-Render-Additions/netrender',
  } 

}