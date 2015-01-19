class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :user_id
      t.integer :receiver_id
      t.integer :message_id

      t.timestamps null: false
    end

    add_index :relationships, :user_id
    add_index :relationships, :receiver_id
    add_index :relationships, :message_id
  end
end
