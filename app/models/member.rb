class Member < ApplicationRecord
  belongs_to :social_group
  belongs_to :person
end
