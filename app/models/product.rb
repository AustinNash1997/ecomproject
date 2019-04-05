# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :category
  has_many :order_items

  validates :name, :description, :price, presence: true

  has_one_attached :image

end
