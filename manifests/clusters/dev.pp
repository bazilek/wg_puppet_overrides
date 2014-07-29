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
