class JobsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @jobs = Job.all.sort_by { |job| job.created_at }.reverse
  end

  def show
    @job = Job.find(params[:id])
    end
end
