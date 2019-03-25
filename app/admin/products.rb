# frozen_string_literal: true

ActiveAdmin.register Product do

  permit_params :product_id, :category_id, :name, :description, :price, :image

  form partial: 'form'

  show do
    attributes_table do
      row :title
      row :image do |ad|
        if ad.image.present?
          image_tag url_for(ad.image)
        end
      end
    end
  end
end
