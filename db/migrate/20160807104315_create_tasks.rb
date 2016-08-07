class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :picture
      t.references :user, foreign_key: true
      t.integer :taken_by
      t.boolean :status, default: false
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
