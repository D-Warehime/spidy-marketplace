class Job < ApplicationRecord
  belongs_to :user
  has_many :job_contracts, dependent: :destroy
end
