class Book < ApplicationRecord
  has_many :borrowing_histories

  validates :title, presence: true
  validates :author, presence: true
  validates :publish_year, presence: true, numericality: { only_integer: true }
  validates :status, presence: true, inclusion: { in: %w[Available Borrowed] }
end
