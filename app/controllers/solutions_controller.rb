class SolutionsController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @solution = Solution.new(solution_params)
    @solution.question_id = @question.id
    begin
    @solution.save!
      flash[:notice] = '投稿に成功しました'
      redirect_to question_path(@question)
    rescue
      render template: "questions/show"
    end
  end

  private 
  def solution_params
    params.require(:solution).permit(:solution_content)
  end
end