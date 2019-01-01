class AddDefeatedByToPresidents < ActiveRecord::Migration[5.2]
  def change
    add_column :presidents, :defeated_by, :string
  end
end
