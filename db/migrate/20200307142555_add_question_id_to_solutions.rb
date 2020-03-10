class AddQuestionIdToSolutions < ActiveRecord::Migration[5.2]
  def change
    add_column :solutions, :question_id, :integer
  end
end
