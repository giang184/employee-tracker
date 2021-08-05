class Division < ApplicationRecord
  has_many :employees, dependent: :destroy
  validates :name, presence: true
  validates_length_of :name, maximum: 100

  before_save(:titleize_division)

  scope :ten_most_recent, -> { order(created_at: :desc).limit(2)}
  private
  def titleize_division
    self.name = self.name.titleize
  end
end