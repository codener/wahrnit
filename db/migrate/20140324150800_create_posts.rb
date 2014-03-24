class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true
      t.text :text
      t.integer :view_count

      t.timestamps
    end
  end
end
