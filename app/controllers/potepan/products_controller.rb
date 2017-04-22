
class Potepan::ProductsController < ApplicationController
	before_action :load_product, only: :show

  include Spree::Core::ControllerHelpers::Order
  include Spree::Core::ControllerHelpers::Auth
  include Spree::Core::ControllerHelpers::Store
  
  def show
    @single_product = Spree::Product.find(params[:id])
    @single_product_image = @single_product.images.first
       @variants = @single_product.
        variants_including_master.
        display_includes.
        with_prices(current_pricing_options).
        includes([:option_values, :images])

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

	private
    def load_product
      if try_spree_current_user.try(:has_spree_role?, "admin")
        @products = Spree::Product.with_deleted
      else
        @products = Spree::Product.available
      end
      @product = @products.friendly.find(params[:id])
    end
end
