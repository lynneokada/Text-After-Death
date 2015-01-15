class RemovePublicKeyFromMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :public_key
  end
end
