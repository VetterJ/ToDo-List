class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :Beschreibung
      t.string :verantwortlich
      t.boolean :erledigt, default: false

      t.timestamps
    end
  end
end
