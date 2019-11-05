class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :phone_number, :birthday, :profile_picture, :money
  has_many :stocks
  has_many :watchlists
end
