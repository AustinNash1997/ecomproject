# frozen_string_literal: true

class SearchController < ApplicationController
  def results
    if params[:search].blank?
      redirect_to(root_path, alert: 'Empty field!') && return
    else
    @order_item = current_order.order_items.new

      @parameter = params[:search].downcase
      @products = Product.all.where('lower(name) LIKE :search', search: "%#{@parameter}%")
      @categories = Product.joins(:category)
                           .where('lower(categories.name) LIKE :search', search: "%#{@parameter}%")
                           .order('products.name')
    end
  end
end
