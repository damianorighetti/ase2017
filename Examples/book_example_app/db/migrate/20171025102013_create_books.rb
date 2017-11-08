class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.integer :year
      t.string :publisher
      t.string :author

      t.timestamps
    end
  end
end
