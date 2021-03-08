class DropLibraries < ActiveRecord::Migration[6.1]
  def up
    drop_table :libraries
  end

  def down
    create_table :libraries do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
