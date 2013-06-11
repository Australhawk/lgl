class AddBooleanStreams < ActiveRecord::Migration
  def change
    add_column :streams, :oficial, :boolean, :default => false
  end
end
