class AddAdminDevise < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :pseudo, :string, limit: 10
  end
end
