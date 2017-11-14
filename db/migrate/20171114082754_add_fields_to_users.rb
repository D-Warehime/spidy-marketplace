class AddFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :location, :string
    add_column :users, :business_name, :string, null: true
    add_column :users, :pay_per_hour, :integer, null: true
  end
end
