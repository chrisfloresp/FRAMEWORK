class CreatePosts < ActiveRecord::Migration
  def change
    create_table :post do |t|
      t.string :title
      t.string :content
      t.references :blog, index: true, foreing_key: true 

      t.timestamps null: false
    end
  end
end
