class AddCodeToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :code, :string
  end
end
