class CodePractice < ApplicationRecord
  belongs_to :apprentice, optional: true
  validates :OOP, :modular_development, :full_stack, :testing, :db_knowledge, :debugging,  
  		numericality: true,
  		presence: true,
  		inclusion: { in: 0..50, message: "number must be between 0-50" }
end
