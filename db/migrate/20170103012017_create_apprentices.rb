class CreateApprentices < ActiveRecord::Migration[5.0]
  def change
    create_table :apprentices do |t|
      t.string :name
      t.string :email
      t.string :project_repo
      t.string :project_url

      t.timestamps
    end
  end
end
