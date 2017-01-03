class Aptitude < ApplicationRecord
  belongs_to :apprentice, optional: true
   validates :teamwork, :motivation, :communication, :energy, :intelligence, :problem_solving,
   	numericality: true,
  	presence: true,
  	inclusion: { in: 0..50, message: "number must be between 0-50" }
end
