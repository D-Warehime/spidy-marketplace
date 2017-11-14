class AddUserReferenceToJobs < ActiveRecord::Migration[5.1]
  def change
    add_reference :jobs, :user, index: true
  end
end
