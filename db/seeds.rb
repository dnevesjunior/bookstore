puts "creating seeds"
10.times do
  book = Book.create(
    title: Faker::Book.title,
    author: Faker::Book.author,
    isbn: Faker::Code.isbn,
    price: Faker::Number.number(digits: 4),
    short_description: Faker::Lorem.sentence(word_count: 5),
  )
  puts "book created: #{book.title}"
end