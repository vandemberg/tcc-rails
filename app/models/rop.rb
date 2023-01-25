class Rop < ApplicationRecord
  validates :name, presence: true
  belongs_to :neighbourhood
end
