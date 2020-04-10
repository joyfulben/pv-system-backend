class AddForeignKeyTositeOutputs < ActiveRecord::Migration[6.0]
  def change
    add_column :site_outputs, :user_id, :integer
  end
end
