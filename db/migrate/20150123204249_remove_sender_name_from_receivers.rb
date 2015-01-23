class RemoveSenderNameFromReceivers < ActiveRecord::Migration
  def change
    remove_column :receivers, :sender_name
  end
end
