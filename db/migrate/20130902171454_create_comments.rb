class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.string :writer_name
      t.string :site_url
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
