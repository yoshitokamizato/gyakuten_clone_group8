class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    @question = Question.new
  end

  def create
    @questions = Question.all
    @question = Question.new(question_params)
    begin
    @question.save!
      flash[:notice] = '投稿に成功しました'
      redirect_to questions_path
    rescue
      render :index
    end
  end

  private
  def question_params
    params.require(:question).permit(:title, :detail)
  end

end
