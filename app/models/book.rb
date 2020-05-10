class Book < ApplicationRecord
  include Search

  validates :title, :author, :isbn, :price, presence: true
  validates :isbn, uniqueness: true
  # add format validation for isbn

  scope :search_by_title, -> (title) { where("lower(title) LIKE :search", search: "%#{title}%") }
  scope :search_by_isbn, -> (isbn) { where("isbn LIKE :search", search: "%#{isbn}%") }
end
