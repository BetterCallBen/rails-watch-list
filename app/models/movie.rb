class Movie < ApplicationRecord
  has_many :bookmarks

  validates_uniqueness_of :title
end
