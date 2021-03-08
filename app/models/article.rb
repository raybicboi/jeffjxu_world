class Article < ApplicationRecord

# relationships
belongs_to :category

# scopes
scope :alphabetical, -> { order('title') }
scope :active, 	     -> { where('active = ?', true) }

# Validations
validates_presence_of :title
validates_presence_of :content

end
