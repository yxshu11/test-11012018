class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.decimal :price, precision: 12, scale: 2, default: 0
      t.text :description
      t.integer :owner_id

      t.timestamps
    end
  end
end
