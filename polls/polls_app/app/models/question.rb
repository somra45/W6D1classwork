class Question < ApplicationRecord
    validates :poll_id, presence: true
    validates :text, presence: true, uniqueness: true
    belongs_to :poll, 
        foreign_key: :poll_id,
        primary_key: :id,
        class_name: :Poll 
    has_many :answer_choices,
        foreign_key: :question_id,
        primary_key: :id,
        class_name: :AnswerChoice,
        dependent: :destroy
end