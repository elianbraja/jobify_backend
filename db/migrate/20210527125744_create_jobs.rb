class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
