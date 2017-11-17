class Business::JobContractsController < ApplicationController
  def index
    @job_contracts = current_user.job_contracts.sort_by(&:created_at).reverse
  end

  def destroy
    @job_contract = JobContract.find(params[:id])
    @job_contract.destroy
    redirect_to business_job_contracts_path
  end
end

