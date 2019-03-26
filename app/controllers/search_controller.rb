class SearchController < ApplicationController
  def index

  end

  def results
    @products = Product.where("name LIKE ?","%#{params[:q]}%")
  end
end
