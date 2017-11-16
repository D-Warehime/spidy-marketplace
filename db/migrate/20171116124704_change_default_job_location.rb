class ChangeDefaultJobLocation < ActiveRecord::Migration[5.1]
  def change
    remove_column(:jobs, :pay_min)
    remove_column(:jobs, :pay_max)
    add_column(:jobs, :payment, :integer, default: 15)
  end
end
