class AddUrlToStream < ActiveRecord::Migration
  def change
    add_column :streams, :account, :string
    remove_column :streams, :idd
  end
end
