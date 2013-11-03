class vim inherits vim::params {
  exec { 'update-alternatives':
    command => 'update-alternatives --set editor /usr/bin/vim.basic',
    unless  => 'test /etc/alternatives/editor -ef /usr/bin/vim.basic',
  }

  file { '/etc/vim/vimrc':
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/vim/${::lsbdistcodename}/etc/vim/vimrc",
    notify  => Exec['update-alternatives'],
    require => Package['vim'],
  }

  package { 'vim':
    ensure => present,
  }
}