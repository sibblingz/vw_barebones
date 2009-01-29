require 'yaml'

CONFIGURATION = YAML::load( File.open("#{RAILS_APP_ROOT}/config/configuration.yml") )[ENVIRONMENT]
Configuration.database = YAML::load(File.open("#{RAILS_APP_ROOT}/config/database.yml"))
Configuration.memcache_servers = CONFIGURATION['memcache_servers']
