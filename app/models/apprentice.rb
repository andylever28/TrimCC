class Apprentice < ApplicationRecord
	validates :name, :project_repo, :project_url, presence: true
	validates :email, presence: true, uniqueness: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
	has_one :code_practice
	has_one :aptitude
	has_one :language_rating
	accepts_nested_attributes_for :code_practice, :aptitude, :language_rating

end	

