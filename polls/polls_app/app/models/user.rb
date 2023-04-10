class User < ApplicationRecord
    validates :username, presence: true
    has_many :authored_polls, 
        foreign_key: :author_id,
        class_name: :Poll,
        primary_key: :id,
        dependent: :destroy
    has_many :responses,
        foreign_key: :user_id,
        class_name: :Response,
        primary_key: :id,
        dependent: :destroy
end
