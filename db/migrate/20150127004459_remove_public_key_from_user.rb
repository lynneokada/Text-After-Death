class RemovePublicKeyFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :public_key
  end
end
