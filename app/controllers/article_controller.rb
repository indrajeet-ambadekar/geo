class ArticleController < ApplicationController
  def index
  end
  def create
  	@post=Article.new
    @post_user_id=current_user.id
  	@post.title=params[:title]
  	@post.desc=params[:desc]
  	if @post.save
  		@status="true"
  	else
  		@status="false"
  	end
    render :index
  end
end
