# frozen_string_literal: true

ActiveAdmin.register Category do
  permit_params :category_id, :name, :description, :image

  form partial: 'form'

  show do
    attributes_table do
      row :title
      row :image do |ad|
        image_tag url_for(ad.image) if ad.image.attached?
      end
    end
  end
end
