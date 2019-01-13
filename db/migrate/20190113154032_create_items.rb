class CreateItems < ActiveRecord::Migration[5.2]
  def up
    create_table :items, id: :uuid do |t|
      t.string :name
      t.boolean :done
      t.references :todo, type: :uuid, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :items
  end
end
