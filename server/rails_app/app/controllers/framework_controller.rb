class FrameworkController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_filter :set_avatar
  before_filter :initialize_response

  def set_avatar
    if(params[:avatar_id])
      @avatar = Avatar.find(params[:avatar_id])
    elsif(params[:user_id])
      @user = User.find(params[:user_id])
      @avatar = @user.avatar if @user.respond_to? :avatar
    end
  end

  def initialize_response
    @response = {}
    @response["_cmd"] = params["_cmd"]
    @response["hashkey"] = params["hashkey"]
  end

  def sfs_render
    @response[:models] ||= []
    render :json => @response
  end

end
