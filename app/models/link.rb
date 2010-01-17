class Link < ActiveRecord::Base
	belongs_to :from_web_page, :foreign_key => :from_web_page_id, :class_name => "WebPage"
	belongs_to :to_web_page, :foreign_key => :to_web_page_id, :class_name => "WebPage"
end
