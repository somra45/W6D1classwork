class Response < ApplicationRecord
    validates :answer_choice_id, presence: true
    validates :user_id, presence: true
    validates :not_duplicate_response, :user_cannot_respond_to_same_question_twice
    belongs_to :answer_choice,
        foreign_key: :answer_choice_id,
        primary_key: :id,
        class_name: :AnswerChoice
    belongs_to :respondent,
        foreign_key: :user_id,
        class_name: :User,
        primary_key: :id,
        dependent: :destroy
    def not_duplicate_response
        Response
            .joins(respondent: :responses)
            .where('users.id = responses.user_id')
            .pluck()
    end
end