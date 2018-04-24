class CreateShams < ActiveRecord::Migration[5.1]
  def change
    create_table :shams do |t|
      t.string :caption

      t.timestamps
    end
  end
end
