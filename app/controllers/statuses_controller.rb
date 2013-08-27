class StatusesController < ApplicationController

 def new
  @uid = params[:uid]
  @post_msg = Status.new
  @statuses = Status.find(:all, :conditions => [ "user_id = :uid", { :uid => @uid }])
 end
 
 def create
  @uid = params[:uid]
  @post_msg = Status.new(:message => params[:status][:message], :user_id => @uid)
  if @post_msg.save
   redirect_to new_status_path :uid => @uid
  end
 end
end
