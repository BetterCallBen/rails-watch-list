class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through => :bookmark

  validates :name, uniqueness: true
end
