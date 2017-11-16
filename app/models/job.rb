class Job < ApplicationRecord
  belongs_to :user
  has_many :job_contracts, dependent: :destroy

  validates :title, :description, :location, :level, :industry, :payment_unit, presence: true
end
