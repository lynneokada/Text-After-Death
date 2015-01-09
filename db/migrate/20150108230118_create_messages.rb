class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.string :sender_id
      t.string :public_key
      t.date :date

      t.timestamps null: false
    end
  end
end
