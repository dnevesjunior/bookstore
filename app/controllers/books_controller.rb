class BooksController < ApplicationController
  before_action :set_book, only: [:show, :destroy]

  def index
    @books = Book.all
    json_response(@books)
  end

  def show
    json_response(@book)
  end

  def create
    @book = Book.create!(book_params)
    json_response(@book, :created)
  end

  def destroy
    @book.destroy
    head :no_content
  end

  private

  def book_params
    params.permit(:id, :title, :author, :isbn, :price)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end