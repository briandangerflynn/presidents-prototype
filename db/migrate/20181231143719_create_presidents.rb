class CreatePresidents < ActiveRecord::Migration[5.2]
  def change
    create_table :presidents do |t|
      t.string :name
      t.string :presidency
      t.string :years_active
      t.string :drink_type
      t.string :specific_drink
      t.string :alt_one
      t.string :alt_two
      t.references :challenge, foreign_key: true

      t.timestamps
    end
  end
end
