class AddAuthorToBooks < ActiveRecord::Migration[5.1]
  def up
    add_column :books, :author_name, :string

    Book.find_each do |book|
      book.update_column :author_name, book.author
    end

    remove_column :books, :author, :string
    add_reference :books, :author, foreign_key: true
  end

  def down
    add_column :books, :author, :string

    Book.find_each do |book|
      book.update_column :author, book.author_name
    end

    remove_column :books, :author_name, :string
    remove_reference :books, :author
  end
end
