class CreateLanguageRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :language_ratings do |t|
      t.integer :javascript
      t.integer :html
      t.integer :css
      t.references :apprentice, foreign_key: true

      t.timestamps
    end
  end
end
