# frozen_string_literal: true

class Promo < ApplicationRecord
  has_many :commerces

  validates :date_range, presence: true
  validates :value, presence: true
  validates :days_available, presence: true
end
