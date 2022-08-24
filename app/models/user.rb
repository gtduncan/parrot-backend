class User < ApplicationRecord
    has_many :lessons
    has_many :parrots
    def index
        render json: User.all
    end
end
