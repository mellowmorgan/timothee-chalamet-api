class Photo < ApplicationRecord
  validates :file_path, presence: true
  validate :no_duplicates
  validates :file_path, format: { with: URI.regexp }
end
  def no_duplicates
    results = Photo.where(file_path: self.file_path)
    if (results.any?)
      errors.add(:file_path, "Photo url already exists.")
    end

  end