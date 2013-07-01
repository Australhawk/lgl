class CreateStreams < ActiveRecord::Migration
  def change
    create_table :streams do |t|
      t.string :title
      t.string :idd
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
