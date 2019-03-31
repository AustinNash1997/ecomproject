# frozen_string_literal: true

class ProductsController < InheritedResources::Base
  def index
    @order_item = current_order.order_items.new

    @products = if params[:category]
                  Product.where(category_id: params[:category])
                elsif params[:search]
                  Product.where('name LIKE ?', "%#{params[:search]}%")
                else
                  Product.all
                end
  end

  private

  def product_params
    params.require(:product).permit(:product_id, :category_id, :name, :description, :price, :image)
  end
end
