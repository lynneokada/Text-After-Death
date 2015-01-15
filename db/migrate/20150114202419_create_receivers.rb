class CreateReceivers < ActiveRecord::Migration
  def change
    create_table :receivers do |t|
      t.string :phonenumber
      t.string :private_key
      t.string :name
      t.string :sender_name

      t.timestamps null: false
    end
  end
end
