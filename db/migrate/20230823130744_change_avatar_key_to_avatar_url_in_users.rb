class ChangeAvatarKeyToAvatarUrlInUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :avatar_key, :avatar_url
  end
end
