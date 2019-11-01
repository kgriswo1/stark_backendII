class User < ApplicationRecord
    has_many :stocks
    has_many :watchlists

    has_secure_password

    validates :username, uniqueness: true
end
