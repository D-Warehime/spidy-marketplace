module JobContractHelper
  def applied?(user, job)
    job.job_contracts.each do |contract|
      return true if contract.user == user
    end
    false
  end

  def accepted?(job)
    job.job_contracts.each do |contract|
      return true if contract.status == 2
    end
    false
  end

  def completed?(job)
    job.job_contracts.each do |contract|
      return true if contract.status == 3
    end
    false
  end

  def print_status(contract)
    case contract.status
    when 0
      "Pending"
    when 1
      "Declined"
    when 2
      "Accepted"
    when 3
      "Completed"
    end
  end

  def completed_contract(job)
    job.job_contracts.each do |contract|
      return contract if contract.status == 3
    end
  end
end
