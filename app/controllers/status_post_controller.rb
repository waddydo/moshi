class StatusPostController < ApplicationController
 def new
  @post_msg = StatusPost.new
 end
 
 def create
  @post_msg = StatusPost.new(params[:post_msg])
  #if(@post_msg.save)
  # redirect_to new_post_msg_path
  #end
 end
end
