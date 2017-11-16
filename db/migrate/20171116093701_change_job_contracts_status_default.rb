class ChangeJobContractsStatusDefault < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:job_contracts, :status, 0)
  end
end
