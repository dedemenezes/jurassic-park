class CreateDinosaurs < ActiveRecord::Migration[7.2]
  def change
    create_table :dinosaurs do |t|
      t.string :name
      t.string :image_url

      t.timestamps
    end
  end
end
