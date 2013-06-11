class AddUrlToStream < ActiveRecord::Migration
  def change
    add_column :streams, :account, :string
  end
end
