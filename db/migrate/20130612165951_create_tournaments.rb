class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :image
      t.string :description
      t.string :fixture
      t.date :open
      t.date :close
      t.date :start
      t.string :url

      t.timestamps
    end
  end
end
