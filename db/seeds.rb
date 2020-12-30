# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning the DB"
PossibleAnswer.delete_all
Question.delete_all

puts "DB sweeped clean"

puts "Seeding Questions"

questions = [
  {
    question_description: 'Do you take hormonal medication?',
    question_tag: 'hormone',
  },

  {
    question_description: 'How often do you get your periods?',
    question_tag: 'period',
  },

  {
    question_description: 'How would you describe your flow?',
    question_tag: 'flow',
  },

  {
    question_description: 'Which menstrual protection do you prefer to use?',
    question_tag: 'protection',
  },

  {
    question_description: 'Which troubles related to your cycle do you experience?',
    question_tag: 'trouble',
  },

  {
    question_description: 'Have you been diagnosed with a gynecological condition?',
    question_tag: 'condition',
  },
]

questions.each do |question|
  new_question = Question.new(
    question_description: question[:question_description],
    question_tag: question[:question_tag]
  )
  new_question.save!
  puts "New question about #{new_question.question_tag} created."
end

# Create the questions with Question.new and save in the ddb

puts "Seeding Possible Answers"

possible_answers = [
  {
    possible_answer_description: 'Yes, and I am happy with it',
    question_id: Question.where(question_tag: 'hormone').ids[0],
  },

  {
    possible_answer_description: 'Yes, but I want to stop',
    question_id: Question.where(question_tag: 'hormone').ids[0],
  },

  {
    possible_answer_description: 'Not for the moment',
    question_id: Question.where(question_tag: 'hormone').ids[0],
  },

  {
    possible_answer_description: 'No, never again',
    question_id: Question.where(question_tag: 'hormone').ids[0],
  },

  {
    possible_answer_description: 'No, never',
    question_id: Question.where(question_tag: 'hormone').ids[0],
  },

  {
    possible_answer_description: 'More than 28 days',
    question_id: Question.where(question_tag: 'period').ids[0],
  },

  {
    possible_answer_description: '21-28 days',
    question_id: Question.where(question_tag: 'period').ids[0],
  },

  {
    possible_answer_description: 'Less than 21 days',
    question_id: Question.where(question_tag: 'period').ids[0],
  },

  {
    possible_answer_description: 'Irregular',
    question_id: Question.where(question_tag: 'period').ids[0],
  },

  {
    possible_answer_description: 'No periods',
    question_id: Question.where(question_tag: 'period').ids[0],
  },

  {
    possible_answer_description: 'Light',
    question_id: Question.where(question_tag: 'flow').ids[0],
  },

  {
    possible_answer_description: 'Normal',
    question_id: Question.where(question_tag: 'flow').ids[0],
  },

  {
    possible_answer_description: 'Heavy',
    question_id: Question.where(question_tag: 'flow').ids[0],
  },

  {
    possible_answer_description: 'Irregular',
    question_id: Question.where(question_tag: 'flow').ids[0],
  },

  {
    possible_answer_description: 'Menstrual pads',
    question_id: Question.where(question_tag: 'protection').ids[0],
  },

  {
    possible_answer_description: 'Tampons',
    question_id: Question.where(question_tag: 'protection').ids[0],
  },

  {
    possible_answer_description: 'Menstrual cup',
    question_id: Question.where(question_tag: 'protection').ids[0],
  },

  {
    possible_answer_description: 'Absorbing underwear',
    question_id: Question.where(question_tag: 'protection').ids[0],
  },

  {
    possible_answer_description: 'Reusable pads',
    question_id: Question.where(question_tag: 'protection').ids[0],
  },

  {
    possible_answer_description: 'Others',
    question_id: Question.where(question_tag: 'protection').ids[0],
  },

  {
    possible_answer_description: 'Cramps',
    question_id: Question.where(question_tag: 'trouble').ids[0],
  },

  {
    possible_answer_description: 'Abdominal pain',
    question_id: Question.where(question_tag: 'trouble').ids[0],
  },

  {
    possible_answer_description: 'Bloating',
    question_id: Question.where(question_tag: 'trouble').ids[0],
  },

  {
    possible_answer_description: 'Inflammation',
    question_id: Question.where(question_tag: 'trouble').ids[0],
  },

  {
    possible_answer_description: 'Digestive disorders',
    question_id: Question.where(question_tag: 'trouble').ids[0],
  },

  {
    possible_answer_description: 'Pelvic & lombar pain',
    question_id: Question.where(question_tag: 'trouble').ids[0],
  },

  {
    possible_answer_description: 'Mood disorders',
    question_id: Question.where(question_tag: 'trouble').ids[0],
  },

  {
    possible_answer_description: 'Skin disorders',
    question_id: Question.where(question_tag: 'trouble').ids[0],
  },

  {
    possible_answer_description: 'Fatigue',
    question_id: Question.where(question_tag: 'trouble').ids[0],
  },

  {
    possible_answer_description: 'Irregular bleeding',
    question_id: Question.where(question_tag: 'trouble').ids[0],
  },

  {
    possible_answer_description: 'Urinary disorders',
    question_id: Question.where(question_tag: 'trouble').ids[0],
  },

  {
    possible_answer_description: 'Dyspaneuria',
    question_id: Question.where(question_tag: 'trouble').ids[0],
  },

  {
    possible_answer_description: 'Infertility',
    question_id: Question.where(question_tag: 'trouble').ids[0],
  },

  {
    possible_answer_description: 'Hot flushes',
    question_id: Question.where(question_tag: 'trouble').ids[0],
  },

  {
    possible_answer_description: 'Other',
    question_id: Question.where(question_tag: 'trouble').ids[0],
  },

  {
    possible_answer_description: 'Endometriosis',
    question_id: Question.where(question_tag: 'condition').ids[0],
  },

  {
    possible_answer_description: 'Policyctic Orarian Sydrom',
    question_id: Question.where(question_tag: 'condition').ids[0],
  },

  {
    possible_answer_description: 'Adenomyosis',
    question_id: Question.where(question_tag: 'condition').ids[0],
  },

  {
    possible_answer_description: 'Pelvic Inflamamatory Disease',
    question_id: Question.where(question_tag: 'condition').ids[0],
  },

  {
    possible_answer_description: 'No, but I suspect it',
    question_id: Question.where(question_tag: 'condition').ids[0],
  },

  {
    possible_answer_description: 'None',
    question_id: Question.where(question_tag: 'condition').ids[0],
  },
]

# puts "#{possible_answers}"
# Create the possible answers with Possibele_answer.new and save in the ddb

possible_answers.each do |possible_answer|
  new_possible_answer = PossibleAnswer.new(
    possible_answer_description: possible_answer[:possible_answer_description],
    question_id: possible_answer[:question_id]
  )
  new_possible_answer.save!
  new_possible_answer_question_id  = new_possible_answer.question_id
  new_possible_answer_question_tag = Question.find(new_possible_answer_question_id).question_tag
  puts "New possible answer about #{new_possible_answer_question_tag} created."
end

