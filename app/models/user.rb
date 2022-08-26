class User < ApplicationRecord
    has_many :lessons
    has_many :parrots
    has_many :stages, through: :lessons
    validates :username, presence: true
    validates :password, presence: true
    validates :email, presence: true
end
