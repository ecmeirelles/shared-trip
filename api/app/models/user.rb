class User < ApplicationRecord
  belongs_to :trip
  has_many :expenses, dependent: :destroy
end
