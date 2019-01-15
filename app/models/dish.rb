# frozen_string_literal: true

class Dish < ApplicationRecord
  # Associations
  belongs_to :course

  # validations
  validates :price, :name, :description, presence: true

  # callbacks
  before_save :downcase_fields

  def name
    self[:name].try(:titleize)
  end

  private

  def downcase_fields
    name.downcase!
    description.downcase!
  end
end
