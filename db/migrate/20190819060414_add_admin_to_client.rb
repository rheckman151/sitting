class AddAdminToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :admin, :boolean, default: false
  end
end
