class AnswerChoice < ApplicationRecord
    validates :body, presence: true, uniqueness: true
    validates :question_id, presence: true
    belongs_to :question,
        foreign_key: :question_id,
        primary_key: :id,
        class_name: :Question
    has_many :responses,
        foreign_key: :answer_choice_id,
        primary_key: :id, 
        class_name: :AnswerChoice,
        dependent: :destroy
end