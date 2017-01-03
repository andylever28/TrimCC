class LanguageRating < ApplicationRecord
  belongs_to :apprentice, optional: true
  validates :javascript, :html, :css,
  	numericality: true,
  	presence: true,
  	inclusion: { in: 0..50, message: "number must be between 0-50" }
end
