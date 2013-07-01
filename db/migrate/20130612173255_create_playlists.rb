class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :name
      t.string :link
      t.text :description
      t.boolean :broadcast

      t.timestamps
    end
  end
end
