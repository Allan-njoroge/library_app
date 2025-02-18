class CreateBorrowingHistories < ActiveRecord::Migration[8.0]
  def change
    create_table :borrowing_histories do |t|
      t.references :book, null: false, foreign_key: true
      t.string :borrower_name
      t.date :borrowed_on
      t.date :returned_on

      t.timestamps
    end
  end
end
