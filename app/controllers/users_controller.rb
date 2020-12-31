class UsersController < ApplicationController

# simple form in the view
# that display all questions
# and all possible answers of each questions as drop down menu
  def quizz
    @questions = Question.all
    @possible_answers = PossibleAnswer.all
    @user_answers = UserAnswer.new
  end

end
