class BorrowingHistory < ApplicationRecord
  belongs_to :book

  validates :borrower_name, prescence: true
  validates :borrowed_on, prescence: true
  validates :returned_on, presence: true, if: -> { status == "returned" }
end
