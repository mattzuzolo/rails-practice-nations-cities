class CreateNations < ActiveRecord::Migration[5.2]
  def change
    create_table :nations do |t|
      t.string :name
      t.string :continent
      t.boolean :native_language_english
      t.string :demonym

      t.timestamps
    end
  end
end
