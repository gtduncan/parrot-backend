class User < ApplicationRecord
    has_many :lessons
    has_many :parrots
    validates :username, presence: true
    validates :password, presence: true
    validates :email, presence: true
end
