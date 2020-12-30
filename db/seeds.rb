# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning the DB"
Question.delete_all
Possible_answer.delete_all

puts "DB sweeped clean"

puts "Seeding Questions"

questions = [
  {
    question_detail: 'Do you take hormonal medication?',
    question_tag: 'hormone',
  },

  {
    question_detail: 'How often do you get your periods?',
    question_tag: 'period',
  },

  {
    question_detail: 'How would you describe your flow?',
    question_tag: 'flow',
  },

  {
    question_detail: 'Which menstrual protection do you prefer to use?',
    question_tag: 'protection',
  },

  {
    question_detail: 'Which troubles related to your cycle do you experience?',
    question_tag: 'trouble',
  },

  {
    question_detail: 'Have you been diagnosed with a gynecological condition?',
    question_tag: 'condition',
  },
]

questions.each do |question|
  new_question = Question.new(
    question_detail: question[:question_tag],
    question_tag: question[:question_tag]
  )
  new_question.save!
  puts "New question about #{new_question.question_tag} created."
end

# Create the questions with Question.new and save in the ddb

puts "Seeding Possible Answers"

possible_answers = [
  {
    possible_answer_detail: 'Yes, and I am happy with it',
    question_id: Question.where(question_tag: 'hormone').id,
  },

  {
    possible_answer_detail: 'Yes, but I want to stop',
    question_id: Question.where(question_tag: 'hormone').id,
  },

  {
    possible_answer_detail: 'Not for the moment',
    question_id: Question.where(question_tag: 'hormone').id,
  },

  {
    possible_answer_detail: 'No, never again',
    question_id: Question.where(question_tag: 'hormone').id,
  },

  {
    possible_answer_detail: 'No, never',

    question_id: Question.where(question_tag: 'hormone').id,
  },

  {
    possible_answer_detail: 'More than 28 days',
    question_id: Question.where(question_tag: 'period').id,
  },

  {
    possible_answer_detail: '21-28 days',
    question_id: Question.where(question_tag: 'period').id,
  },

  {
    possible_answer_detail: 'Less than 21 days',
    question_id: Question.where(question_tag: 'period').id,
  },

  {
    possible_answer_detail: 'Irregular',
    question_id: Question.where(question_tag: 'period').id,
  },

  {
    possible_answer_detail: 'No periods',
    question_id: Question.where(question_tag: 'period').id,
  },

  {
    possible_answer_detail: 'Light',
    question_id: Question.where(question_tag: 'flow').id,
  },

  {
    possible_answer_detail: 'Normal',
    question_id: Question.where(question_tag: 'flow').id,
  },

  {
    possible_answer_detail: 'Heavy',
    question_id: Question.where(question_tag: 'flow').id,
  },

  {
    possible_answer_detail: 'Irregular',
    question_id: Question.where(question_tag: 'flow').id,
  },

  {
    possible_answer_detail: 'Menstrual pads',
    question_id: Question.where(question_tag: 'protection').id,
  },

  {
    possible_answer_detail: 'Tampons',
    question_id: Question.where(question_tag: 'protection').id,
  },

  {
    possible_answer_detail: 'Menstrual cup',
    question_id: Question.where(question_tag: 'protection').id,
  },

  {
    possible_answer_detail: 'Absorbing underwear',
    question_id: Question.where(question_tag: 'protection').id,
  },

  {
    possible_answer_detail: 'Reusable pads',
    question_id: Question.where(question_tag: 'protection').id,
  },

  {
    possible_answer_detail: 'Others',
    question_id: Question.where(question_tag: 'protection').id,
  },

  {
    possible_answer_detail: 'Cramps',
    question_id: Question.where(question_tag: 'trouble').id,
  },

  {
    possible_answer_detail: 'Abdominal pain',
    question_id: Question.where(question_tag: 'trouble').id,
  },

  {
    possible_answer_detail: 'Bloating',
    question_id: Question.where(question_tag: 'trouble').id,
  },

  {
    possible_answer_detail: 'Inflammation',
    question_id: Question.where(question_tag: 'trouble').id,
  },

  {
    possible_answer_detail: 'Digestive disorders',
    question_id: Question.where(question_tag: 'trouble').id,
  },

  {
    possible_answer_detail: 'Pelvic & lombar pain',
    question_id: Question.where(question_tag: 'trouble').id,
  },

  {
    possible_answer_detail: 'Mood disorders',
    question_id: Question.where(question_tag: 'trouble').id,
  },

  {
    possible_answer_detail: 'Skin disorders',
    question_id: Question.where(question_tag: 'trouble').id,
  },

  {
    possible_answer_detail: 'Fatigue',
    question_id: Question.where(question_tag: 'trouble').id,
  },

  {
    possible_answer_detail: 'Irregular bleeding',
    question_id: Question.where(question_tag: 'trouble').id,
  },

  {
    possible_answer_detail: 'Urinary disorders',
    question_id: Question.where(question_tag: 'trouble').id,
  },

  {
    possible_answer_detail: 'Dyspaneuria',
    question_id: Question.where(question_tag: 'trouble').id,
  },

  {
    possible_answer_detail: 'Infertility',
    question_id: Question.where(question_tag: 'trouble').id,
  },

  {
    possible_answer_detail: 'Hot flushes',
    question_id: Question.where(question_tag: 'trouble').id,
  },

  {
    possible_answer_detail: 'Other',
    question_id: Question.where(question_tag: 'trouble').id,
  },

  {
    possible_answer_detail: 'Endometriosis',
    question_id: Question.where(question_tag: 'condition').id,
  },

  {
    possible_answer_detail: 'Policyctic Orarian Sydrom',
    question_id: Question.where(question_tag: 'condition').id,
  },

  {
    possible_answer_detail: 'Adenomyosis',
    question_id: Question.where(question_tag: 'condition').id,
  },

  {
    possible_answer_detail: 'Pelvic Inflamamatory Disease',
    question_id: Question.where(question_tag: 'condition').id,
  },

  {
    possible_answer_detail: 'No, but I suspect it',
    question_id: Question.where(question_tag: 'condition').id,
  },

  {
    possible_answer_detail: 'None',
    question_id: Question.where(question_tag: 'condition').id,
  },
]

# Create the possible answers with Possibele_answer.new and save in the ddb

possible_answers.each do |possible_answer|
  new_possible_answer = Possible_answer.new(
    possible_answer_detail: question[:possible_answer_detail],
    question_tag: question[:question_tag]
  )
  new_possible_answer.save!
  puts "New answers created."
end
