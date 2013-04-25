class Article < ActiveRecord::Base
	attr_accessible :active, :title, :content, :category_id

	validates_presence_of :title, :content

	scope :alphabetical, order('title')
	scope :active, where('active = ?', true)

	belongs_to :category

end
