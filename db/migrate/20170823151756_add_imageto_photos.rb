class AddImagetoPhotos < ActiveRecord::Migration[5.1]
  def change
  end

  def self.up
    add_attachment :photos, :image
  end

  def self.down
    remove_attachment :photos, :image
  end
end
