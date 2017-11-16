class JobContract < ApplicationRecord
  belongs_to :job
  belongs_to :user

  validates :payment_unit, inclusion: { in: %w(contract hr day week) }
  validates :price, numericality: { greater_than: 0 }
end
