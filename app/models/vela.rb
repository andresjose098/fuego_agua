class Vela < ApplicationRecord
  validates :modelo, presence: true
  validates :estilo, presence: true

  validate :validar_según_estilo

  private

  def validar_según_estilo
    case estilo
    when "Color"
      errors.add(:color, "debe estar presente") if color.blank?
    when "Texto"
      errors.add(:mensaje, "debe estar presente") if mensaje.blank?
    when "Dibujos"
      errors.add(:dibujo, "debe estar presente") if dibujo.blank?
    end
  end
end
