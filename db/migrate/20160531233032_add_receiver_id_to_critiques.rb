class AddReceiverIdToCritiques < ActiveRecord::Migration
  def change
    add_column :critiques, :receiver_id, :integer
  end
end
