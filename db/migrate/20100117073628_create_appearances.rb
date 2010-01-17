class CreateAppearances < ActiveRecord::Migration
  def self.up
    create_table :appearances do |t|
      t.integer :web_site_id
      t.float :height
      t.float :width
      t.integer :color

      t.timestamps
    end
  end

  def self.down
    drop_table :appearances
  end
end
