class AddNidToNodes < ActiveRecord::Migration[5.2]
  def change
    add_column :nodes, :nid, :string
  end
end
