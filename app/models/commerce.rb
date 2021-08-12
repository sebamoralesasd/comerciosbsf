# frozen_string_literal: true

class Commerce < ApplicationRecord
  belongs_to :promo

  validates :name, presence: true
  scope :ropa, -> { where(kind: 'Indumentaria y Accesorios') }
  scope :librerias, -> { where(kind: 'Jugueterias y Librerias') }
  scope :rosario, -> { where(city: 'Rosario') }
end
