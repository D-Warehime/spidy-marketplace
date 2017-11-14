class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :skills
      t.text :description
      t.string :title
      t.string :level
      t.string :industry
      t.string :location
      t.integer :pay_min
      t.integer :pay_max
      t.string :starting_date
      t.string :ending_date

      t.timestamps
    end
  end
end
