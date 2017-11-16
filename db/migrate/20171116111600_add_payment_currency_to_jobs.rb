class AddPaymentCurrencyToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :payment_unit, :string, default: "hr"
  end
end
