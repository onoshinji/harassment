class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :kind, null: false
      t.integer :guilty, null: false, default: 0
      t.integer :not_guilty, null: false, default: 0
      t.timestamps
    end
  end
end
