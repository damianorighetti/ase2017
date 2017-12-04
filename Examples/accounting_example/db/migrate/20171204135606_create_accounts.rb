class CreateAccounts < ActiveRecord::Migration[5.1]
  def up
    create_table :accounts do |t|
      t.string :name
      t.string :account_type
      t.string :currency

      t.timestamps
    end

    Entry.find_each do |entry|
      Account.find_or_create_by name: entry.from_account do |account|
        account.currency = '€'
      end

      Account.find_or_create_by name: entry.to_account do |account|
        account.currency = '€'
      end
    end
  end

  def down
    drop_table :accounts
  end
end
