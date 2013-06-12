class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.string :url
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
