json.extract! social_group, :id, :name, :neighbourhood_id, :person_id, :group_type, :phone, :email, :notes, :created_at, :updated_at
json.url social_group_url(social_group, format: :json)
