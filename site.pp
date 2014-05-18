node puppet {
  class { '::mysql::server':
    root_password => 'secret',
    override_options => { 'mysqld' => { 'max_connections' => '600', 'query_cache_size' => '64M' }
    }
  }
}