#Any code that needs to happen on initialization
#EXAMPLES

#Create rooms for map table entries
#zone = Server.zone
#Map.all.each do |map|
#  room_name = map.sfs_room_name
#  
#  if room_name != ""
#    unless zone.roomNameAlreadyExist room_name
#      Server.logger.info("Creating room #{room_name}")
#      Server.helper.createRoom(
#      zone, 
#      {'name' => room_name, 'pwd' => '', 'maxU' => '150', 'maxS' => '0', 'isGame' => 'false'}.to_hash_map,
#      nil, #Server owned room
#      true, #Update user room lists
#      false)  # Do Not broadcast event internally.  I am not sure what this means, but this works when it is false
#    end
#  end
#end
