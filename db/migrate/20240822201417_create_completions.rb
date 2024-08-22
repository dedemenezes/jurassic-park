class CreateCompletions < ActiveRecord::Migration[7.2]
  def change
    create_table :completions do |t|
      t.references :dinosaur, null: false, foreign_key: true
      t.references :chore, null: false, foreign_key: true

      t.timestamps
    end
  end
end
