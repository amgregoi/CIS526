<<<<<<< HEAD
class AdminController < ApplicationController
  before_filter :authorized?
  
  private
  def authorized?
    #unless current_user && current_user.is_admin?
    #  flash[:error] = "You are not authorized to view that page."
    #  redirect_to root_path
    #end
  end
end
=======
class AdminController < ApplicationController
  before_filter :authorized?
  
  private
  def authorized?
    unless current_user && current_user.is_admin?
      flash[:error] = "You are not authorized to view that page."
      redirect_to root_path
    end
  end
end
>>>>>>> 9d29c98f57f0dc4deae1e43e05d156b6d31d155b
