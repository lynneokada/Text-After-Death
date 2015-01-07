class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.string :user_id
      t.string :receiver_id
      t.datetime :date

      t.timestamps null: false
    end
  end
end
