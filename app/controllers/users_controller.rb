class UsersController < ApplicationController

# simple form in the view
# that display all questions
# and all possible answers of each questions as drop down menu
  def quizz
    @questions = Question.all
    @possible_answers = Possible_answer.all
    @user_answers = User_answer.new
  end

end
