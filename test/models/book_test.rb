require 'test_helper'

class BookTest < ActiveSupport::TestCase
  def setup
    @book = Book.new(title: 'Test', author: 'Test Author', isbn: '123-45-67890-12-3', price: '2000', short_description: 'A book test')
  end
  
  test 'valid book' do
    assert(@book.valid?)
  end

  test 'invalid without title' do
    @book.title = nil
    refute(@book.valid?, 'saved without title')
    assert_not_nil(@book.errors[:title], 'no validation error for title present')
  end

  test 'invalid without author' do
    @book.author = nil
    refute(@book.valid?, 'saved without author')
    assert_not_nil(@book.errors[:author], 'no validation error for author present')
  end

  test 'invalid without isbn' do
    @book.isbn = nil
    refute(@book.valid?, 'saved without isbn')
    assert_not_nil(@book.errors[:isbn], 'no validation error for isbn present')
  end

  test 'invalid without price' do
    @book.price = nil
    refute(@book.valid?, 'saved without price')
    assert_not_nil(@book.errors[:price], 'no validation error for price present')
  end

  test '#search_by_title' do
    assert_includes(Book.search_by_title("Test"), books(:one))
    assert_includes(Book.search_by_title("Test"), books(:two))
    refute_includes(Book.search_by_title("Test"), books(:three))
  end

  test '#search_by_isbn' do
    assert_includes(Book.search_by_isbn("123"), books(:one))
    assert_includes(Book.search_by_isbn("123"), books(:two))
    refute_includes(Book.search_by_isbn("123"), books(:three))
  end
end
