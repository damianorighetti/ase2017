class Book < ApplicationRecord

  belongs_to :author

  validates :title, presence: true
  validates :isbn, format: { with: /\d{11}/ }
  validates :year, presence: true, numericality: { greater_than: 1500 }
  validates :publisher, presence: true
  validates :author, presence: true

end
