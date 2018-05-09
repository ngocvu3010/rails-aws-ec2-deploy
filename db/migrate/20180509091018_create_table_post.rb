class CreateTablePost < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :category

      t.timestamps null: false
    end
  end
end
