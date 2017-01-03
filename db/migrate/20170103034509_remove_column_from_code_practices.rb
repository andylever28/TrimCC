class RemoveColumnFromCodePractices < ActiveRecord::Migration[5.0]
  def change
    remove_column :code_practices, :problem_solving, :integer
  end
end
