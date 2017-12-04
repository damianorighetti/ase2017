json.extract! entry, :id, :date, :from_account, :to_account, :amount, :description, :created_at, :updated_at
json.url entry_url(entry, format: :json)
