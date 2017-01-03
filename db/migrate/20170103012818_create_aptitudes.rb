class CreateAptitudes < ActiveRecord::Migration[5.0]
  def change
    create_table :aptitudes do |t|
      t.integer :teamwork
      t.integer :motivation
      t.integer :communication
      t.integer :energy
      t.integer :intelligence
      t.integer :problem_solving
      t.references :apprentice, foreign_key: true

      t.timestamps
    end
  end
end
