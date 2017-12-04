class AddReferenceToAccountsToEntries < ActiveRecord::Migration[5.1]
  def up
    add_reference :entries, :destination_account, foreign_key: true
    add_reference :entries, :source_account, foreign_key: true

    Entry.find_each do |entry|
      entry.source_account = Account.find_by name: entry.from_account
      entry.destination_account = Account.find_by name: entry.to_account
      entry.save
    end
  end

  def down
    remove_reference :entries, :destination_account
    remove_reference :entries, :source_account
  end
end
