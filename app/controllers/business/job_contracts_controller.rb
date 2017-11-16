class Business::JobContractsController < ApplicationController
  def index
    @job_contracts = current_user.job_contracts
  end
end
