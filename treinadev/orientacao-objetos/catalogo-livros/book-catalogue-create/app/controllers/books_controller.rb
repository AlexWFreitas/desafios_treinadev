class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book
    else
      flash.now[:error] = "Todos campos devem ser preenchidos"
      render :new
    end
  end

  private
    def book_params
      params.require(:book).permit(:title, :author, :publication_year, :genre, :abstract)
    end
end
