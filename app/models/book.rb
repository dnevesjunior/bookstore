class Book < ApplicationRecord
  validates :title, :author, :isbn, :price, presence: true
  validates :isbn, uniqueness: true
  # add format validation for isbn
end
