class Room < ApplicationRecord
  validates :number, presence: true, length: {maximum: 50}, uniqueness: {case_sensitive: false}
has_and_belongs_to_many :members
 end
