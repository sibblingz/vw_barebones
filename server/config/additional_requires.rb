def load_plugin(path)
  plugin = Plugin.new(path)
  $:.concat plugin.load_paths
  plugin.load
end

Dir.glob("#{RAILS_APP_ROOT}/app/models/**/*rb") do |f| 
  autoload(File.basename(f,".rb").camelize, f)
end

require "#{EXTENSION_ROOT}/vw_controller"

#ADDITIONAL EXAMPLES
#require "#{RAILS_APP_ROOT}/app/models/user.rb"
#load_plugin("#{RAILS_APP_ROOT}/vendor/plugins/paperclip")

