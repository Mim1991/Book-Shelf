class AddShelfToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :shelf, :string,:default => "Table"
  end
end
