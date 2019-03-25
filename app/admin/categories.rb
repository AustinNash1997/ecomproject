ActiveAdmin.register Category do
  permit_params :category_id, :name, :description, :image
end
