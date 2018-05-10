class CreateCommentTable < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.string :website
      t.text :body
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
