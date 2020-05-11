require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  # There's been some changes from rails 4 to rails 5 I wasn't aware
  # def setup
  #   @book = Book.create(title: 'Test', author: 'Test Author', isbn: '123-45-67890-12-3', price: '2000', short_description: 'A book test')
  # end

  # def test_index
  #   get(books_url)
  #   assert_response(200)
  #   assert_includes(@book, @response.body)
  # end
end
