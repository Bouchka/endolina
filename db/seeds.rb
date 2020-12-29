# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning the DB"
Question.delete_all

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
    question_detail: 'Which protection do you prefer?',
    question_tag: 'protection',
  },

  {
    question_detail: 'Which menstrual troubles do you experience?',
    question_tag: 'trouble',
  },

  {
    question_detail: 'Have you been diagnosed with a menstrual condition?',
    question_tag: 'condition',
  },
]

# Create the questions with Question.new and save in the ddb

puts "Seeding Possible Answers"

possible_answers = [
  {
    possible_answer_detail: 'Yes',
    questions_id: Question.where(question_tag: 'hormone').id,
  },

  {
    possible_answer_detail: 'No',
    questions_id: Question.where(question_tag: 'hormone').id,
  },

  # {
  #   question_details: 'How often do you get your periods?',
  # },

  # {
  #   question_details: 'How would you describe your flow?',
  # },

  # {
  #   question_details: 'Which protection do you prefer?',
  # },

  # {
  #   question_details: 'Which menstrual troubles do you experience?',
  # },

  # {
  #   question_details: 'Have you been diagnosed with a menstrual condition?',
  # },
]

# Create the possible answers with Possibele_answer.new and save in the ddb
