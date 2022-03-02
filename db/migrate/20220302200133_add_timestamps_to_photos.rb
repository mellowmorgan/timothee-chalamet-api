class AddTimestampsToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :created_at, :datetime
  end
end
