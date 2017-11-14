class CreateJobContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :job_contracts do |t|
      t.integer :status
      t.integer :price
      t.string :payment_unit
      t.integer :freelancer_rating
      t.boolean :negotiations
      t.references :job, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
