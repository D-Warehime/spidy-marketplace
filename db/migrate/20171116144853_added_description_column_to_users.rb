class AddedDescriptionColumnToUsers < ActiveRecord::Migration[5.1]
  def change
        add_column :users, :description, :string, default: "Describe yourself and experience."
  end
end
