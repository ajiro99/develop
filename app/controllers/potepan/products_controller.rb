class Potepan::ProductsController < ApplicationController

  def show
    @single_product = Spree::Product.find(params[:id])
    @single_product_image = @single_product.images.first
  end

  def index
  	if params[:prototype_name].present?
	    @products = Spree::Product.includes(:taxons).
	    where("spree_taxons.name like ?", "%#{params[:prototype_name]}%").references(:taxons)
    else
    	@products = Spree::Product.all
    end
    @prototypes = Spree::Prototype.all

  end
end
