class AddSocialsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :twitter, :string
    add_column :users, :instagram, :string
    add_column :users, :youtube, :string
  end
end
