class AddViewToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :view, :integer, default: 0
  end
end
