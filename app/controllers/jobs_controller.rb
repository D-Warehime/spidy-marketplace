class JobsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @jobs = Job.all.sort_by(&:created_at).reverse
  end

  def show
    @job = Job.find(params[:id])
  end

  def destroy
   @job = current_user.jobs.find(params[:id])
   @job.destroy
   redirect_to jobs_path
  end
end
