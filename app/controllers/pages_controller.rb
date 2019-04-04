class PagesController < ApplicationController
  
  def index
  end

  def create_activity
  	@oso = UserActivity.new
	@oso.user_id = params[:user_id]
	@oso.activity_id = params[:activity_id]
	@oso.save
	redirect_to root_path
  end




end
