class AddParkReferenceToDinosaurs < ActiveRecord::Migration[7.2]
  def change
    add_reference :dinosaurs, :park, null: false, foreign_key: true
  end
end
