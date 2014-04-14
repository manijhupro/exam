class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :question
      t.text :A
      t.text :B
      t.text :C
      t.text :D

      t.timestamps
    end
  end
end
