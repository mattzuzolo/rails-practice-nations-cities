class CreateTowns < ActiveRecord::Migration[5.2]
  def change
    create_table :towns do |t|
      t.string :name
      t.string :country
      t.boolean :native_language_english
      t.integer :nation_id

      t.timestamps
    end
  end
end
