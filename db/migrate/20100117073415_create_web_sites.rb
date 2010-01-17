class CreateWebSites < ActiveRecord::Migration
  def self.up
    create_table :web_sites do |t|
      t.sring :url
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :web_sites
  end
end
