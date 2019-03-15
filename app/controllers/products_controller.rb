class ProductsController < InheritedResources::Base

  private

    def product_params
      params.require(:product).permit(:product_id, :category_id, :name, :description, :price, :image)
    end
end

