# frozen_string_literal: true

class Commerce < ApplicationRecord
  belongs_to :promo

  validates :name, presence: true
end
