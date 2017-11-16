class JobContractsController < ApplicationController
  before_action :find_job

  def new
    @job_contract = JobContract.new
    @job_contract.user = current_user
    @job_contract.job = @job
  end

  def create
    @job_contract = JobContract.new(job_contract_params)
    @job_contract.job = @job
    @job_contract.user = current_user
    if @job_contract.save
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  private

  def find_job
    @job = Job.find(params[:job_id])
  end

  def job_contract_params
    params.require(:job_contract).permit(:status, :price, :payment_unit, :freelancer_rating, :negotiations)
  end
end
