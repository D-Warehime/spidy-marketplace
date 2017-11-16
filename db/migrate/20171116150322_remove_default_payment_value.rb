class RemoveDefaultPaymentValue < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:jobs, :payment, nil)
  end
end
