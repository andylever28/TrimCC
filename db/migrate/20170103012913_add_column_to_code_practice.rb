class AddColumnToCodePractice < ActiveRecord::Migration[5.0]
  def change
    add_column :code_practices, :problem_solving, :integer
  end
end
