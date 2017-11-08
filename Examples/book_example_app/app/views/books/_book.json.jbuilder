json.extract! book, :id, :title, :isbn, :year, :publisher, :author, :created_at, :updated_at
json.url book_url(book, format: :json)
