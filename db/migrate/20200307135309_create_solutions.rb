class CreateSolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :solutions do |t|
      t.text :solution_content
      t.timestamps
    end
  end
end
