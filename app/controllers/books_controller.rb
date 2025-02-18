class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book, notice: "Book has been added sucessfully"
    else
      render :new, notice: "Failed to add book"
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to @book, notice: "Book was updated sucessfully"
    else
      return :edit, notice: "Failed to update book information"
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_url, notice: "Book sucessfully deleted"
  end

  private
    def book_params
      params.require(:book).permit(:title, :author, :publish_year, :status)
    end
end
