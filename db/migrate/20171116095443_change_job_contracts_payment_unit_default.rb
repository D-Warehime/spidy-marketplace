class ChangeJobContractsPaymentUnitDefault < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:job_contracts, :payment_unit, "hr")
  end
end
