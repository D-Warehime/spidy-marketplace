class Business::JobContractsController < ApplicationController
  def index
    @job_contracts = current_user.job_contracts.sort_by(&:created_at).reverse
  end
end
