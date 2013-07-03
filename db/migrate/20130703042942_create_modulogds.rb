class CreateModulogds < ActiveRecord::Migration
  def change
    create_table :modulogds do |t|
      t.integer :match_id
      t.boolean :mostrar

      t.timestamps
    end
  end
end
