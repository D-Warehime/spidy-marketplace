module JobContractHelper
  def applied?(user, job)
    job.job_contracts.each do |job_contract|
      return true if job_contract.user == user
    end
    false
  end
end
