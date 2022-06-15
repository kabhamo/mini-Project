class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :person, null: false, foreign_key: true
      t.string :status
      t.string :description
      t.timestamps
    end
  end
end
