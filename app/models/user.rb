class User < ApplicationRecord
    has_many :plants
    has_many :notes

    has_secure_password
    validates :name, uniqueness: { case_sensitive: false }

end
