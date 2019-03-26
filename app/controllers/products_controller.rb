# frozen_string_literal: true

class ProductsController < InheritedResources::Base
  def index
    @products = if params[:category]
                  Product.where(category_id: params[:category])
                elsif params[:search]
                  Product.where('name LIKE ?', "%#{params[:search]}%")
                  puts "yes"
                else
                  Product.all
                end
  end

  private

  def product_params
    params.require(:product).permit(:product_id, :category_id, :name, :description, :price, :image)
  end
end
