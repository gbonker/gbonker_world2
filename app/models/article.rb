class Article < ActiveRecord::Base

#relationships
	belongs_to :category

#Validations
	validates_presense_of :title, :content


#Scopes
	scope :active, where('active = ?',true)
	scope :alphabetical, order('title')


end
