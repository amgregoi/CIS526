class AdminController < ApplicationController
  before_filter :authorized?
  
  private
  def authorized?
    #unless session[:user_id] && session[:user_id].is_admin?
    #  flash[:error] = "You are not authorized to view that page."
    #  redirect_to root_path
    #end
  end
end
