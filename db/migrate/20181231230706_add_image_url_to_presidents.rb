class AddImageUrlToPresidents < ActiveRecord::Migration[5.2]
  def change
    add_column :presidents, :image_url, :string
  end
end
