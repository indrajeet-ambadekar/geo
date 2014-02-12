class LocationController < ApplicationController
  def index
  end

  def create
  	@post=Location.new
    @post_user_id=current_user.id
  	@post.address=params[:address]
  	@post.longitude=params[:longitude]
  	@post.latitude=params[:latitude]
  	if @post.save
  		@status="true"
  	else
  		@status="false"
  	end
    redirect_to :action=>:index
  end
end
