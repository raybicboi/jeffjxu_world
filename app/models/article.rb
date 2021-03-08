class Article < ApplicationRecord

# relationships
has_one :category

# scopes
scope :alphabetical, -> { order('title') }
scope :active, 	     -> { where('active = ?', true) }

# Validations
validates_presence_of :title
validates_presence_of :content

end
