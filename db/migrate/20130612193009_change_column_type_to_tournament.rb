class ChangeColumnTypeToTournament < ActiveRecord::Migration
  def change
    remove_column :tournaments, :description
    add_column :tournaments, :description, :text
  end
end
