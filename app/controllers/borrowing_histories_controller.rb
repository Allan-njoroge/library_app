class BorrowingHistoriesController < ApplicationController
  def borrow
    @book = Book.find(params[:book_id])
    @borrowing_history = @book.borrowing_histories.new(borrower_name: params[:borrower_name], borrowed_on: Date.today)
    if @borrowing_history.save
      @book.update(status: "borrowed")
      redirect_to @book, notice: "Book was sucessfully borrowed"
    else
      render :show
    end
  end

  def return
    @book = Book.find(params[:book_id])
    @borrowing_history = @book.borrowing_histories.find_by(returned_on: nil)

    if @borrowing_history.update(returned_on: Date.today)
      @book.update(status: "available")
      redirect_to @book, notice: "Book was sucessfully returned"
    else
      render :show
    end
  end
end
