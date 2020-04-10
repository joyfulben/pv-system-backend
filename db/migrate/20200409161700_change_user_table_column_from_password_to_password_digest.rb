class ChangeUserTableColumnFromPasswordToPasswordDigest < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :password, :password_digest
    rename_column :users, :name, :username
  end
end
