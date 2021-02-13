class AddColumnToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :little_guilty, :integer, default: 0
    add_column :posts, :little_not_guilty, :integer, default: 0
  end
end
