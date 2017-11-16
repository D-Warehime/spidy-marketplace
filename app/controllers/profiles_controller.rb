class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [ :show ]

  def show
    if (@profile.facebook_picture_url) == nil
      @profile_picture_url = "http://placehold.it/50x50"
    else
      url_temp = @profile.facebook_picture_url[0..-7]
      @profile_picture_url = "#{url_temp}large"
    end
  end

  def edit
  end

  def update
    @profile.update(profile_params)
    redirect_to profile_path
  end

  private

  def set_profile
    if user_signed_in? && current_user.id == User.find(params[:id])
      @profile = current_user
    else
      @profile = User.find(params[:id])
    end
  end

  def profile_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :email, :description)
  end


end
