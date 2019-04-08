class PagesController < ApplicationController
  authorize_resource :class => PagesController
  
  def index
    @users = User.all
  end  

  def user_page
    @user = User.find(params[:user_id])
  	@activities = UserActivity.where(user_id: params[:user_id]).order(:created_at).reverse
    @category = Category.all
  end



end
