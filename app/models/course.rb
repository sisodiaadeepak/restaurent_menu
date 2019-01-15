# frozen_string_literal: true

class Course < ApplicationRecord
  # Associations
  has_many :dishes

  # validations
  validates :name, presence: true

  # callbacks
  before_save :downcase_fields

  def name
    self[:name].try(:titleize)
  end

  private

  def downcase_fields
    name.downcase!
  end
end
