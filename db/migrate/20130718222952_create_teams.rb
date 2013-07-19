class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :url

      t.timestamps
    end
  end
end
