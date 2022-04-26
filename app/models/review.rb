class Review < ApplicationRecord
  belongs_to :user
  belongs_to :cafe

  validates :score, presence: true
end
