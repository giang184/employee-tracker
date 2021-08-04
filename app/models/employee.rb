class Employee < ApplicationRecord
  belongs_to :division
  validates :name, presence: true
  before_save(:titleize_employee)

  private
  def titleize_employee
    self.name = self.name.titleize
  end
end