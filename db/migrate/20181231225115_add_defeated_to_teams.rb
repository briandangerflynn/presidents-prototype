class AddDefeatedToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :defeated, :boolean
  end
end
