class Apprentice < ApplicationRecord

	has_one :aptitude
	has_one :codepractice
	has_one :languagerating

	accepts_nested_attributes_for :aptitude, :codepractice, :languagerating
end
