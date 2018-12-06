class Trip < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :destination, dependent: :destroy

  validates :name, presence: true, length: { minimum: 5 }
end
