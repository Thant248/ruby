class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.integer :age
      t.string :email
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
