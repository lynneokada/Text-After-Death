class RemoveSenderIdFromMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :sender_id
  end
end
