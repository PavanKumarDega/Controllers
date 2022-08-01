class BooksController < ApplicationController

def index
  @books = Book.all
end

def create
  @book =Book.new(room_params)
end
end
