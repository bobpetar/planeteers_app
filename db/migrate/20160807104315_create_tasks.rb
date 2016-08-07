class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :picture
      t.references :user, foreign_key: true
      t.integer :taken_by, default: false
      t.boolean :status, default: false
      t.boolean :done

      t.timestamps
    end
  end
end
