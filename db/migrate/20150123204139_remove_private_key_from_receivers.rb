class RemovePrivateKeyFromReceivers < ActiveRecord::Migration
  def change
    remove_column :receivers, :private_key
  end
end
