class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update]

  def show
    url_temp = @profile.facebook_picture_url[0..-7]
    @profile_picture_url = "#{url_temp}large"
  end

  def edit
  end

  def update
    @profile.update(profile_params)
    redirect_to profile_path
  end

  private

  def set_profile
    @profile = current_user
  end

  def profile_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :email, :description)
  end


end
