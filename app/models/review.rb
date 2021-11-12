class Review < ApplicationRecord
  belongs_to :list

  validates :content, presence: true
  validates :note, presence: true
end
