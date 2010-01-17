require 'migration_helper'


class CreateInitTables < ActiveRecord::Migration

	extend MigrationHelper
  def self.up

		create_table :web_sites, :force => true do |t|
			t.string :url
	    t.string :name
			t.string :description
			t.timestamps
		end

		create_table :web_pages, :force => true do |t|
			t.references :web_site
			t.string :url
			t.timestamps
		end

		create_table :information_fragments, :force => true do |t|
			t.references :web_page
			t.string :image_url
			t.string :cache_path
			t.string :keywords
			t.timestamps
		end


			create_table :links, :force => true do |t|
				t.integer :from_web_page_id
				t.integer :to_web_page_id
				t.timestamps
		end

		add_index :links, [:from_web_page_id, :to_web_page_id], :uniq => true

		create_table :appearances, :force => true do |t|
			t.references :web_site
			t.float :height
			t.float :width
			t.integer :color
			t.timestamps
		end

  end

  def self.down
		drop_table :appearances
		drop_table :information_fragments
		drop_table :links
		drop_table :web_page
		drop_table :web_site
  end
end
