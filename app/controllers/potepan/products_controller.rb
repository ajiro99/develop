
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

  def cart

  end

    def populate
      order    = current_order(create_order_if_necessary: true)
      variant  = Spree::Variant.find(params[:variant_id])
      quantity = params[:quantity].to_i

      # 2,147,483,647 is crazy. See issue https://github.com/spree/spree/issues/2695.
      if quantity.between?(1, 2_147_483_647)
        begin
          order.contents.add(variant, quantity)
        rescue ActiveRecord::RecordInvalid => e
          error = e.record.errors.full_messages.join(", ")
        end
      else
        error = Spree.t(:please_enter_reasonable_quantity)
      end

      if error
        flash[:error] = error
        redirect_back_or_default(spree.root_path)
      else
        # respond_with(order) do |format|
        #   format.html { redirect_to cart_potepan_products_path }
        # end
        redirect_to cart_potepan_products_path
      end
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
