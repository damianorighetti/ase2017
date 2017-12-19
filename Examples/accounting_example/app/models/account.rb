class Account < ApplicationRecord

  # http://guides.rubyonrails.org/association_basics.html#has-many-association-reference
  has_many :incoming_entries,
           inverse_of:  :destination_account,
           class_name:  'Entry',
           foreign_key: :destination_account_id
  has_many :outgoing_entries,
           inverse_of:  :source_account,
           class_name:  'Entry',
           foreign_key: :source_account_id

  def entries
    Entry.where(id: incoming_entry_ids)
         .or(Entry.where(id: outgoing_entry_ids))
         .order(date: :asc)
  end

end
