class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.date :date
      t.string :from_account
      t.string :to_account
      t.decimal :amount
      t.text :description

      t.timestamps
    end
  end
end
