class ProfilesController < ApplicationController
  def show
    @user = User.find_by_profile_name(params[:id])
    if @user
      @statuses = @user.statuses.all
      render action: :show
    else
      
      render file: 'public/404', status: 404, formats: [:html]
    end
  end
  
  def edit
    @user = User.find_by_profile_name(params[:id])
    
    if @user
      @user.update_attributes(params[:user])
    #  render :notice => "Meeting Updated"
    #else
    #  redirect_to user_show_path, :notice => "Meeting Updated"
    end
    
  end
  
end
