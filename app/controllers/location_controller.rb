class LocationController < ApplicationController
  def index
  end

  def create
  	@post=Location.new
    @post.user_id=current_user.id
  	@post.address=params[:address]
    @post.save
    redirect_to :action=>:index
  end

end
