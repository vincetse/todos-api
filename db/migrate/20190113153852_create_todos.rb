class CreateTodos < ActiveRecord::Migration[5.2]
  def up
    create_table :todos, id: :uuid do |t|
      t.string :title
      t.string :created_by

      t.timestamps
    end
  end

  def down
    drop_table :todos
  end
end
