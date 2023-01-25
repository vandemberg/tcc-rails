class SocialGroup < ApplicationRecord
  belongs_to :neighbourhood
  belongs_to :responsible, class_name: "Person"
end
