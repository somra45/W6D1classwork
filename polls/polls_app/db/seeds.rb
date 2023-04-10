# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# def down
#     drop_table :responses, force: :cascade
#     drop_table :answer_choices, force: :cascade
#     drop_table :questions, force: :cascade
#     drop_table :polls, force: :cascade
#     drop_table :users, force: :cascade
# end
Response.destroy_all
AnswerChoice.destroy_all
Question.destroy_all
Poll.destroy_all
User.destroy_all
    u1 = User.create!(username: 'Alvin')
    u2 = User.create!(username: 'Spencer')
    u3 = User.create!(username: 'Kin')
    u4 = User.create!(username: 'Kyle')
    u5 = User.create!(username: 'Ayce')


    p1 = Poll.create!(title: 'Cats Poll', author: u1)
    p2 = Poll.create!(title: 'Dogs Poll', author: u2)
    p3 = Poll.create!(title: 'Reptile Poll', author: u3)
    p4 = Poll.create!(title: 'Snake Poll', author: u4)
    p5 = Poll.create!(title: 'Bird Poll', author: u5)
    p6 = Poll.create!(title: 'Hamster Poll', author: u3)
    p7 = Poll.create!(title: 'Ferret Poll', author: u4)
    p8 = Poll.create!(title: 'Fish Poll', author: u2)
    p9 = Poll.create!(title: 'Pets Poll', author: u1)

    
    q1 = Question.create!(text: 'What is the best cat toy', poll: p1)
    q2 = Question.create!(text: 'What is the best dog toy', poll: p2)
    q3 = Question.create!(text: 'What is the best reptile toy', poll: p3)
    q4 = Question.create!(text: 'What is the best snake toy', poll: p4)
    q5 = Question.create!(text: 'What is the best bird toy', poll: p5)
    q6 = Question.create!(text: 'What is the best hamster toy', poll: p6)
    q7 = Question.create!(text: 'What is the best ferret toy', poll: p7)
    q8 = Question.create!(text: 'What is the best fish toy', poll: p8)
    q9 = Question.create!(text: 'What is your favorite pet', poll: p9)
    q10 = Question.create!(text: 'Do you prefer a big tank or a small tank for your fishies', poll: p8)
    q11 = Question.create!(text: 'What is your favorite dog breed', poll: p2)
    q12 = Question.create!(text: 'What is your favorite bird to have as a pet', poll: p5)


    a1 = AnswerChoice.create!(body: 'cat tower', question: q1)
    a2 = AnswerChoice.create!(body: 'ball of string', question: q1)
    a3 = AnswerChoice.create!(body: 'chew toy', question: q1)
    a4 = AnswerChoice.create!(body: 'chew toy1', question: q2)
    a5 = AnswerChoice.create!(body: 'bone', question: q2)
    a6 = AnswerChoice.create!(body: 'rope', question: q2)
    a7 = AnswerChoice.create!(body: 'plants', question: q3)
    a8 = AnswerChoice.create!(body: 'bridge', question: q3)
    a9 = AnswerChoice.create!(body: 'sand', question: q3)
    a9 = AnswerChoice.create!(body: 'hut', question: q4)
    a9 = AnswerChoice.create!(body: 'cave', question: q4)
    a9 = AnswerChoice.create!(body: 'log', question: q4)
    a10 = AnswerChoice.create!(body: 'log1', question: q5)
    a11 = AnswerChoice.create!(body: 'perch', question: q5)
    a12 = AnswerChoice.create!(body: 'wheel', question: q6)
    a13 = AnswerChoice.create!(body: 'chew toy2', question: q6)
    a14 = AnswerChoice.create!(body: 'chew toy3', question: q7)
    a15 = AnswerChoice.create!(body: 'bone1', question: q7)
    a16 = AnswerChoice.create!(body: 'plant', question: q8)
    a17 = AnswerChoice.create!(body: 'castle', question: q8)
    a18 = AnswerChoice.create!(body: 'cat', question: q9)
    a19 = AnswerChoice.create!(body: 'dog', question: q9)
    a20 = AnswerChoice.create!(body: 'snake', question: q9)
    a21 = AnswerChoice.create!(body: 'fish', question: q9)
    a22 = AnswerChoice.create!(body: 'ferret', question: q9)
    a23 = AnswerChoice.create!(body: 'hamster', question: q9)
    a24 = AnswerChoice.create!(body: 'reptile', question: q9)
    a25 = AnswerChoice.create!(body: 'bird', question: q9)
    a26 = AnswerChoice.create!(body: 'big tank', question: q10)
    a27 = AnswerChoice.create!(body: 'small tank', question: q10)
    a28 = AnswerChoice.create!(body: 'golden retriever', question: q11)
    a29 = AnswerChoice.create!(body: 'pitbull', question: q11)
    a30 = AnswerChoice.create!(body: 'bulldog', question: q11)
    a32 = AnswerChoice.create!(body: 'terrier', question: q11)
    a33 = AnswerChoice.create!(body: 'parrot', question: q12)
    a34 = AnswerChoice.create!(body: 'hawk', question: q12)
    a35 = AnswerChoice.create!(body: 'robin', question: q12)

    
    
    r1 = Response.create!(answer_choice: a1, respondent: u1)
    r2 = Response.create!(answer_choice: a2, respondent: u2)
    r3 = Response.create!(answer_choice: a3, respondent: u3)
    r4 = Response.create!(answer_choice: a4, respondent: u5)
    r5 = Response.create!(answer_choice: a5, respondent: u4)
    r6 = Response.create!(answer_choice: a6, respondent: u2)
    r7 = Response.create!(answer_choice: a7, respondent: u1)
    r8 = Response.create!(answer_choice: a8, respondent: u2)
    r9 = Response.create!(answer_choice: a9, respondent: u3)
    r10 = Response.create!(answer_choice: a10, respondent: u5)
    r11 = Response.create!(answer_choice: a11, respondent: u4)
    r12 = Response.create!(answer_choice: a12, respondent: u2)
    r13 = Response.create!(answer_choice: a13, respondent: u1)
    r14 = Response.create!(answer_choice: a14, respondent: u2)
    r15 = Response.create!(answer_choice: a15, respondent: u3)
    r16 = Response.create!(answer_choice: a16, respondent: u5)
    r17 = Response.create!(answer_choice: a17, respondent: u4)
    r18 = Response.create!(answer_choice: a18, respondent: u2)
    r19 = Response.create!(answer_choice: a19, respondent: u1)
    r20 = Response.create!(answer_choice: a20, respondent: u2)
    r21 = Response.create!(answer_choice: a21, respondent: u3)
    r22 = Response.create!(answer_choice: a22, respondent: u5)
    r23 = Response.create!(answer_choice: a23, respondent: u4)
    r24 = Response.create!(answer_choice: a24, respondent: u2)
    r25 = Response.create!(answer_choice: a25, respondent: u1)
    r26 = Response.create!(answer_choice: a26, respondent: u2)
    r27 = Response.create!(answer_choice: a27, respondent: u3)
    r28 = Response.create!(answer_choice: a27, respondent: u5)
    r29 = Response.create!(answer_choice: a28, respondent: u4)
    r30 = Response.create!(answer_choice: a29, respondent: u2)
    r31 = Response.create!(answer_choice: a30, respondent: u1)
    r32 = Response.create!(answer_choice: a32, respondent: u2)
    r33 = Response.create!(answer_choice: a32, respondent: u3)
    r34 = Response.create!(answer_choice: a33, respondent: u5)
    r35 = Response.create!(answer_choice: a34, respondent: u4)
    r36 = Response.create!(answer_choice: a35, respondent: u2)

    


