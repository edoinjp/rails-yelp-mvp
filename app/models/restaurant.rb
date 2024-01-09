class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese","italian","french", "japanese", "belgian"]}

  has_many :reviews, dependent: :destroy
end
