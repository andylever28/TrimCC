class AddColumnToCodePractice < ActiveRecord::Migration[5.0]
  def change
    add_column :code_practices, :debugging, :integer
  end
end
