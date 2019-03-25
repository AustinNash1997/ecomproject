# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :products

  validates :name, :description, presence: true
  # has_one_attached :image

  def thumbnail
    return self.image.variant(resize:'150x210!').processed
  end
end
