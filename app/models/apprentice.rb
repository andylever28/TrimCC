class Apprentice < ApplicationRecord

	has_one :code_practice
	has_one :aptitude
	has_one :language_rating
	accepts_nested_attributes_for :code_practice, :aptitude, :language_rating

end	

