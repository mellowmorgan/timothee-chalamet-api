class Quote < ApplicationRecord
  validates :content, presence: true
  validate :no_duplicates
  def no_duplicates
    results = Quote.where(content: self.content)
    if (results.any?)
      errors.add(:content, "Quote already exists.")
    end
  end  
end