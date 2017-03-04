class Potepan::ProductsController < ApplicationController

  def show
    @single_product = Spree::Product.find(params[:id])
    @single_product_image = @single_product.images.first
  end
end
