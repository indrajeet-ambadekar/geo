class LocationController < ApplicationController
  def index
  	if current_user
  		@loc=Location.where(:user_id=>current_user.id)
  		count=@loc.count
  		if count>2
  			# places=@loc.first(count-2)
  			# binding.pry
  		end
  		
  	end
  end

  def create
  	@post=Location.new
    @post.user_id=current_user.id
  	@post.address=params[:address]
    @post.save
    redirect_to :action=>:index
  end
end
