class InternalEvent < InternalEventController

  #EXAMPLES
#  def userExit(event)
#    room = event.getObject("room")
#    destroy_room_if_empty(room)
#  end

#  def loginRequest(event)
#    error = ""
#    nick = event.getParam('nick')
#    pass = event.getParam('pass')
#    chan = event.getObject('chan')
#    user = User.authenticate(nick, pass)
#    
#    response = {}
#    return_path = 'internal_event/login_request/Login/'
#    if user
#      user.perform_login_actions
#      smartfox_user = Server.helper.canLogin(user.avatar.name, pass, chan, $server.getOwnerZone)
#      response['user_id'] = smartfox_user.getUserId
#      response['user_name'] = smartfox_user.getName
#      return_path += 'loginSucceeded'
#      response['models'] = [ user ]
#      Statistic.create_user_logged_in(user.id)
#    else
#      return_path += 'loginFailed'
#    end
#    response['_cmd'] = return_path
#    Server.send_response(response, -1, nil, [chan])
#    Server.helper.sendRoomList(chan)
#  end

end
