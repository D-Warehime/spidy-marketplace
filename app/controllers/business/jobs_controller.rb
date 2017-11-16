class Business::JobsController < ApplicationController
  def index
    @jobs = current_user.jobs
  end

  def show
    @job = current_user.jobs.find(param[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = current_user.jobs.new(job_params)
    if @job.save
      redirect_to business_jobs_path(@job)
    else
      render :new
    end
  end

  def destroy
   @job = current_user.jobs.find(params[:id])
   @job.destroy
   redirect_to business_jobs_path
  end

  private

  def job_params
    params.require(:job).permit(:title, :description, :skills, :level, :industry, :location, :payment, :payment_unit, :starting_date, :ending_date)
  end
end
