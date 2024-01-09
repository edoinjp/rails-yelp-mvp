class Restaurant < ApplicationRecord
  validates :name, :addres, :category, presence: true
  validates :category, inclusion: { in: ['chinese","italian", "japanese", "belgian']}

  has_meny :reviews, dependent: :destroy
end
