class Song < ApplicationRecord
  belongs_to :artist
  has_and_belongs_to_many :billb, optional: true 
end
