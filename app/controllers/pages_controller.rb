class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def new
  end

  private

  helper_method :resource_class

  def resource_name
    :user
  end
  helper_method :resource_name

  def resource
    @resource ||= User.new
  end
  helper_method :resource

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  helper_method :devise_mapping

  def resource_class
    User
  end
end
