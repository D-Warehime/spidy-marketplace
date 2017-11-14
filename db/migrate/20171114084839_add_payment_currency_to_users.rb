class AddPaymentCurrencyToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :payment_currency, :string, default: "€"
  end
end
