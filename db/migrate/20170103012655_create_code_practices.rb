class CreateCodePractices < ActiveRecord::Migration[5.0]
  def change
    create_table :code_practices do |t|
      t.integer :OOP
      t.integer :modular_development
      t.integer :full_stack
      t.integer :testing
      t.integer :db_knowledge
      t.references :apprentice, foreign_key: true

      t.timestamps
    end
  end
end
