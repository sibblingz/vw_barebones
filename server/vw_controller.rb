class VWController < SfsController
  #All controllers should inherit from VWController
  
  #EXAMPLES
#  def initialize(command, params, sender, from_room)
#    super(command, params, sender, from_room)
#    if ( params[:avatar_id] ) 
#      @avatar = Avatar.find(params[:avatar_id])
#      user = @avatar.user
#      Fact.create(:user_id => user.id, :avatar_id => @avatar.id, :command => command, :from_room => from_room, :params => params.inspect)
#    elsif ( params[:user_id] )
#      user = User.find( params[:user_id] )
#      @avatar = user.avatar
#      Fact.create(:user_id => user.id, :avatar_id => @avatar.id, :command => command, :from_room => from_room, :params => params.inspect)
#    end
#    
#    
#  end
#  
#  
#  def render(options = {})
#    @response[:rewards] = ( @avatar.reward_actions ) if( @avatar and !@avatar.reward_actions.empty?)
#    @response[:models] ||= []
#    @response[:models].push( @avatar.new_join_items ) if( @avatar )
#    super(options)
#  end
  
end
