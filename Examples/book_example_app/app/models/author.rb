class Author < ApplicationRecord

  has_many :books, dependent: :destroy

  # validates :name, presence: true
  # validates :surname, presence: true

  validates_presence_of :name, :surname

  def fullname
    "#{name} #{surname}"
  end

  def to_s
    fullname
  end

end
