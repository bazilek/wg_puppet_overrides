if $::kernel in [ 'Linux', 'SunOS' ] {

  Exec{
    path => '/usr/bin:/usr/sbin/:/bin:/sbin',
  }

  File{
    mode          => '0644',
    owner         => 'root',
    group         => 'root',
  }

}

if $::kernel == 'Linux' {
  Package{
    allow_virtual => true,
  }
}

if ($::operatingsystem == 'OracleLinux') and ($::operatingsystemmajrelease == 5) {
  Package {
    provider => 'yum',
  }
}


node 'my_hostname.my.domain' {

  include wg::common

  #include wg::db::dboperator
  #include wg::nginx

  #class { 'backuppc::server':
  #  dummy   => true,
  #  srv_tag => 'bpc_tag',
  #}

  #backuppc::client::jobs::fs { 'testpath':
  #  on => false,
  #  fs => [ '/mnt/', '/srv/puppet/', ],
  #}

  #backuppc::client::jobs::mysql { 'testmysqlN':
  #  on => false,
  #}

  #include wg::l1

}
