require 'memcache'

memcache_options = {
   :compression => true,
   :debug => false,
   :namespace => "mem-#{RAILS_ENV}",
   :readonly => false,
   :urlencode => false
}

memcache_servers =  CONFIGURATION['memcache_servers']
CACHE = MemCache.new(memcache_servers)
CACHE.servers = memcache_servers
