class Employee < ApplicationRecord
  belongs_to :division
  before_save(:titleize_employee)

  private
  def titleize_employee
    self.name = self.name.titleize
  end
end