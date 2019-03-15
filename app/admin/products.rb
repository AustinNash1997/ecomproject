# frozen_string_literal: true

ActiveAdmin.register Product do

  permit_params :product_id, :category_id, :name, :description, :price, :image
end
