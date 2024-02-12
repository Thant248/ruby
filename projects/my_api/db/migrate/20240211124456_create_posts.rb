class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :age
      t.string :address

      t.timestamps
    end
  end
end
