class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :place
      t.date :date
      t.string :book_name
      
      t.timestamps
    end
  end
end
