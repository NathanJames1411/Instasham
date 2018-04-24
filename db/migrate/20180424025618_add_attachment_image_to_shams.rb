class AddAttachmentImageToShams < ActiveRecord::Migration[5.1]
  def self.up
    change_table :shams do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :shams, :image
  end
end
