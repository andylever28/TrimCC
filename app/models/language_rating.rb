class LanguageRating < ApplicationRecord
  belongs_to :apprentice, optional: true
end
