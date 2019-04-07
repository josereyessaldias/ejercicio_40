class PagesController < ApplicationController
  
  def index
    @users = User.all
  end

  def create_activity
  @oso = UserActivity.new
	@oso.user_id = params[:user_id]
	@oso.activity_id = params[:activity_id]
	@oso.save
	redirect_to root_path
  end

  def edit_activity
    @user = User.find(params[:user_id])
    @activity = UserActivity.where(user_id: params[:user_id], activity_id: params[:activity_id]).first
  end

  def update_activity
    @activity = UserActivity.where(user_id: params[:user_id], activity_id: params[:activity_id]).first
    @activity.update(start: params[:user_activity][:start])
    redirect_to user_page_path
  end

  

  def delete_activity
    @activity = UserActivity.where(user_id: params[:user_id], activity_id: params[:activity_id]).first
    @activity.destroy
    redirect_to user_page_path, notice: 'La actividad fue eliminada'
    
  end

  def user_page
    @user = User.find(params[:user_id])
  	@activities = UserActivity.where(user_id: params[:user_id]).order(:created_at).reverse
    @category = Category.all
  end



end
