class User < ActiveRecord::Base
    has_many :comments
    has_many :games, through: :comments
end