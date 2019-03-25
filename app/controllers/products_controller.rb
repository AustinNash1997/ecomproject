# frozen_string_literal: true

class ProductsController < InheritedResources::Base
  def index
    @products = if params[:category]
                  Product.where(category_id: params[:category])

                else
                  Product.where(category_id:2)
                end
  end

  private

  def product_params
    params.require(:product).permit(:product_id, :category_id, :name, :description, :price, :image)
  end
end
