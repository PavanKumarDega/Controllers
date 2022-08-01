class BooksController < ApplicationController

def index
  @books = Book.all
end
def new
  @book=Book.new
end

def create
  @book =Book.new(book_params)
  if @book.save
    flash[:notice]="Book created successfully"
    redirect_to books_path
  else
    render 'new'
  end
end
private
def book_params
  params.require(:book).permit(:name,:author,:pages)
end
end
