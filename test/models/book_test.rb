require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test 'valid book' do
    book = Book.new(title: 'Test', author: 'Test Author', isbn: '123-45-67890-12-3', price: '2000', short_description: 'A book test')
    assert book.valid?
  end

  test 'invalid without title' do
    book = Book.new(author: 'Test Author', isbn: '123-45-67890-12-3', price: '2000', short_description: 'A book test')
    refute book.valid?
    assert_not_nil book.errors[:title]
  end

  test 'invalid without author' do
    book = Book.new(title: 'Test', isbn: '123-45-67890-12-3', price: '2000', short_description: 'A book test')
    refute book.valid?
    assert_not_nil book.errors[:author]
  end

  test 'invalid without isbn' do
    book = Book.new(title: 'Test', author: 'Test Author', price: '2000', short_description: 'A book test')
    refute book.valid?
    assert_not_nil book.errors[:isbn]
  end

  test 'invalid without price' do
    book = Book.new(title: 'Test', author: 'Test Author', isbn: '123-45-67890-12-3', short_description: 'A book test')
    refute book.valid?
    assert_not_nil book.errors[:price]
  end
end
