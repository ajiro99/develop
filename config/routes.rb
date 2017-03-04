Rails.application.routes.draw do

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, :at => '/'
          # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'potepan/index'
  get 'potepan/product_grid_left_sidebar'
  get 'potepan/product_list_left_sidebar'
  # get 'potepan/single_product'
  # get 'potepan/products/:id', to: 'single_products#show'
  get 'potepan/cart_page'
  get 'potepan/blog_left_sidebar'
  get 'potepan/blog_right_sidebar'
  get 'potepan/blog_single_left_sidebar'
  get 'potepan/blog_single_right_sidebar'
  get 'potepan/about_us'
  get 'potepan/tokushoho'
  get 'potepan/privacy_policy'
  namespace :potepan do
    resources :products, only: [:show]
  end
end

# == Route Map
#
#                            Prefix Verb URI Pattern                                  Controller#Action
#                             spree      /                                            Spree::Core::Engine
#                     potepan_index GET  /potepan/index(.:format)                     potepan#index
# potepan_product_grid_left_sidebar GET  /potepan/product_grid_left_sidebar(.:format) potepan#product_grid_left_sidebar
# potepan_product_list_left_sidebar GET  /potepan/product_list_left_sidebar(.:format) potepan#product_list_left_sidebar
#            potepan_single_product GET  /potepan/single_product(.:format)            potepan#single_product
#                 potepan_cart_page GET  /potepan/cart_page(.:format)                 potepan#cart_page
#         potepan_blog_left_sidebar GET  /potepan/blog_left_sidebar(.:format)         potepan#blog_left_sidebar
#        potepan_blog_right_sidebar GET  /potepan/blog_right_sidebar(.:format)        potepan#blog_right_sidebar
#  potepan_blog_single_left_sidebar GET  /potepan/blog_single_left_sidebar(.:format)  potepan#blog_single_left_sidebar
# potepan_blog_single_right_sidebar GET  /potepan/blog_single_right_sidebar(.:format) potepan#blog_single_right_sidebar
#                  potepan_about_us GET  /potepan/about_us(.:format)                  potepan#about_us
#                 potepan_tokushoho GET  /potepan/tokushoho(.:format)                 potepan#tokushoho
#            potepan_privacy_policy GET  /potepan/privacy_policy(.:format)            potepan#privacy_policy
#
# Routes for Spree::Core::Engine:
#                                                  set_locale POST   /locale/set(.:format)                                                               spree/locale#set {:format=>:json}
#                                      new_spree_user_session GET    /user/spree_user/sign_in(.:format)                                                  spree/user_sessions#new
#                                          spree_user_session POST   /user/spree_user/sign_in(.:format)                                                  spree/user_sessions#create
#                                  destroy_spree_user_session GET    /user/spree_user/logout(.:format)                                                   spree/user_sessions#destroy
#                                     new_spree_user_password GET    /user/spree_user/password/new(.:format)                                             spree/user_passwords#new
#                                    edit_spree_user_password GET    /user/spree_user/password/edit(.:format)                                            spree/user_passwords#edit
#                                         spree_user_password PATCH  /user/spree_user/password(.:format)                                                 spree/user_passwords#update
#                                                             PUT    /user/spree_user/password(.:format)                                                 spree/user_passwords#update
#                                                             POST   /user/spree_user/password(.:format)                                                 spree/user_passwords#create
#                              cancel_spree_user_registration GET    /user/spree_user/cancel(.:format)                                                   spree/user_registrations#cancel
#                                 new_spree_user_registration GET    /user/spree_user/sign_up(.:format)                                                  spree/user_registrations#new
#                                edit_spree_user_registration GET    /user/spree_user/edit(.:format)                                                     spree/user_registrations#edit
#                                     spree_user_registration PATCH  /user/spree_user(.:format)                                                          spree/user_registrations#update
#                                                             PUT    /user/spree_user(.:format)                                                          spree/user_registrations#update
#                                                             DELETE /user/spree_user(.:format)                                                          spree/user_registrations#destroy
#                                                             POST   /user/spree_user(.:format)                                                          spree/user_registrations#create
#                                                   edit_user GET    /users/:id/edit(.:format)                                                           spree/users#edit
#                                                        user PATCH  /users/:id(.:format)                                                                spree/users#update
#                                                             PUT    /users/:id(.:format)                                                                spree/users#update
#                                                       login GET    /login(.:format)                                                                    spree/user_sessions#new
#                                          create_new_session POST   /login(.:format)                                                                    spree/user_sessions#create
#                                                      logout GET    /logout(.:format)                                                                   spree/user_sessions#destroy
#                                                      signup GET    /signup(.:format)                                                                   spree/user_registrations#new
#                                                registration POST   /signup(.:format)                                                                   spree/user_registrations#create
#                                            recover_password GET    /password/recover(.:format)                                                         spree/user_passwords#new
#                                              reset_password POST   /password/recover(.:format)                                                         spree/user_passwords#create
#                                               edit_password GET    /password/change(.:format)                                                          spree/user_passwords#edit
#                                             update_password PUT    /password/change(.:format)                                                          spree/user_passwords#update
#                                       checkout_registration GET    /checkout/registration(.:format)                                                    spree/checkout#registration
#                                update_checkout_registration PUT    /checkout/registration(.:format)                                                    spree/checkout#update_registration
#                                                 new_account GET    /account/new(.:format)                                                              spree/users#new
#                                                edit_account GET    /account/edit(.:format)                                                             spree/users#edit
#                                                     account GET    /account(.:format)                                                                  spree/users#show
#                                                             PATCH  /account(.:format)                                                                  spree/users#update
#                                                             PUT    /account(.:format)                                                                  spree/users#update
#                                                             DELETE /account(.:format)                                                                  spree/users#destroy
#                                                             POST   /account(.:format)                                                                  spree/users#create
#                                new_admin_spree_user_session GET    /user/spree_user/sign_in(.:format)                                                  spree/admin/user_sessions#new
#                                    admin_spree_user_session POST   /user/spree_user/sign_in(.:format)                                                  spree/admin/user_sessions#create
#                            destroy_admin_spree_user_session GET    /user/spree_user/logout(.:format)                                                   spree/admin/user_sessions#destroy
#                               new_admin_spree_user_password GET    /user/spree_user/password/new(.:format)                                             spree/admin/user_passwords#new
#                              edit_admin_spree_user_password GET    /user/spree_user/password/edit(.:format)                                            spree/admin/user_passwords#edit
#                                   admin_spree_user_password PATCH  /user/spree_user/password(.:format)                                                 spree/admin/user_passwords#update
#                                                             PUT    /user/spree_user/password(.:format)                                                 spree/admin/user_passwords#update
#                                                             POST   /user/spree_user/password(.:format)                                                 spree/admin/user_passwords#create
#                                          admin_unauthorized GET    /admin/authorization_failure(.:format)                                              spree/admin/user_sessions#authorization_failure
#                                                 admin_login GET    /admin/login(.:format)                                                              spree/admin/user_sessions#new
#                                    admin_create_new_session POST   /admin/login(.:format)                                                              spree/admin/user_sessions#create
#                                                admin_logout GET    /admin/logout(.:format)                                                             spree/admin/user_sessions#destroy
#                                                        root GET    /                                                                                   spree/home#index
#                                                    products GET    /products(.:format)                                                                 spree/products#index
#                                                     product GET    /products/:id(.:format)                                                             spree/products#show
#                                                  locale_set GET    /locale/set(.:format)                                                               spree/locale#set
#                                             update_checkout PATCH  /checkout/update/:state(.:format)                                                   spree/checkout#update
#                                              checkout_state GET    /checkout/:state(.:format)                                                          spree/checkout#edit
#                                                    checkout GET    /checkout(.:format)                                                                 spree/checkout#edit
#                                             orders_populate GET    /orders/populate(.:format)                                                          spree/orders#populate_redirect
#                                                 token_order GET    /orders/:id/token/:token(.:format)                                                  spree/orders#show
#                                             populate_orders POST   /orders/populate(.:format)                                                          spree/orders#populate
#                                                  edit_order GET    /orders/:id/edit(.:format)                                                          spree/orders#edit
#                                                       order GET    /orders/:id(.:format)                                                               spree/orders#show
#                                                             PATCH  /orders/:id(.:format)                                                               spree/orders#update
#                                                             PUT    /orders/:id(.:format)                                                               spree/orders#update
#                                                        cart GET    /cart(.:format)                                                                     spree/orders#edit
#                                                 update_cart PATCH  /cart(.:format)                                                                     spree/orders#update
#                                                  empty_cart PUT    /cart/empty(.:format)                                                               spree/orders#empty
#                                               nested_taxons GET    /t/*id(.:format)                                                                    spree/taxons#show
#                                                unauthorized GET    /unauthorized(.:format)                                                             spree/home#unauthorized
#                                                         cvv GET    /content/cvv(.:format)                                                              spree/content#cvv
#                                                   cart_link GET    /cart_link(.:format)                                                                spree/store#cart_link
#                                          admin_search_users GET    /admin/search/users(.:format)                                                       spree/admin/search#users
#                                       admin_search_products GET    /admin/search/products(.:format)                                                    spree/admin/search#products
#                                       home_admin_dashboards GET    /admin/dashboards/home(.:format)                                                    spree/admin/dashboards#home
#                             admin_promotion_promotion_rules GET    /admin/promotions/:promotion_id/promotion_rules(.:format)                           spree/admin/promotion_rules#index
#                                                             POST   /admin/promotions/:promotion_id/promotion_rules(.:format)                           spree/admin/promotion_rules#create
#                          new_admin_promotion_promotion_rule GET    /admin/promotions/:promotion_id/promotion_rules/new(.:format)                       spree/admin/promotion_rules#new
#                         edit_admin_promotion_promotion_rule GET    /admin/promotions/:promotion_id/promotion_rules/:id/edit(.:format)                  spree/admin/promotion_rules#edit
#                              admin_promotion_promotion_rule GET    /admin/promotions/:promotion_id/promotion_rules/:id(.:format)                       spree/admin/promotion_rules#show
#                                                             PATCH  /admin/promotions/:promotion_id/promotion_rules/:id(.:format)                       spree/admin/promotion_rules#update
#                                                             PUT    /admin/promotions/:promotion_id/promotion_rules/:id(.:format)                       spree/admin/promotion_rules#update
#                                                             DELETE /admin/promotions/:promotion_id/promotion_rules/:id(.:format)                       spree/admin/promotion_rules#destroy
#                           admin_promotion_promotion_actions GET    /admin/promotions/:promotion_id/promotion_actions(.:format)                         spree/admin/promotion_actions#index
#                                                             POST   /admin/promotions/:promotion_id/promotion_actions(.:format)                         spree/admin/promotion_actions#create
#                        new_admin_promotion_promotion_action GET    /admin/promotions/:promotion_id/promotion_actions/new(.:format)                     spree/admin/promotion_actions#new
#                       edit_admin_promotion_promotion_action GET    /admin/promotions/:promotion_id/promotion_actions/:id/edit(.:format)                spree/admin/promotion_actions#edit
#                            admin_promotion_promotion_action GET    /admin/promotions/:promotion_id/promotion_actions/:id(.:format)                     spree/admin/promotion_actions#show
#                                                             PATCH  /admin/promotions/:promotion_id/promotion_actions/:id(.:format)                     spree/admin/promotion_actions#update
#                                                             PUT    /admin/promotions/:promotion_id/promotion_actions/:id(.:format)                     spree/admin/promotion_actions#update
#                                                             DELETE /admin/promotions/:promotion_id/promotion_actions/:id(.:format)                     spree/admin/promotion_actions#destroy
#                             admin_promotion_promotion_codes GET    /admin/promotions/:promotion_id/promotion_codes(.:format)                           spree/admin/promotion_codes#index
#                                            admin_promotions GET    /admin/promotions(.:format)                                                         spree/admin/promotions#index
#                                                             POST   /admin/promotions(.:format)                                                         spree/admin/promotions#create
#                                         new_admin_promotion GET    /admin/promotions/new(.:format)                                                     spree/admin/promotions#new
#                                        edit_admin_promotion GET    /admin/promotions/:id/edit(.:format)                                                spree/admin/promotions#edit
#                                             admin_promotion GET    /admin/promotions/:id(.:format)                                                     spree/admin/promotions#show
#                                                             PATCH  /admin/promotions/:id(.:format)                                                     spree/admin/promotions#update
#                                                             PUT    /admin/promotions/:id(.:format)                                                     spree/admin/promotions#update
#                                                             DELETE /admin/promotions/:id(.:format)                                                     spree/admin/promotions#destroy
#                                  admin_promotion_categories GET    /admin/promotion_categories(.:format)                                               spree/admin/promotion_categories#index
#                                                             POST   /admin/promotion_categories(.:format)                                               spree/admin/promotion_categories#create
#                                new_admin_promotion_category GET    /admin/promotion_categories/new(.:format)                                           spree/admin/promotion_categories#new
#                               edit_admin_promotion_category GET    /admin/promotion_categories/:id/edit(.:format)                                      spree/admin/promotion_categories#edit
#                                    admin_promotion_category PATCH  /admin/promotion_categories/:id(.:format)                                           spree/admin/promotion_categories#update
#                                                             PUT    /admin/promotion_categories/:id(.:format)                                           spree/admin/promotion_categories#update
#                                                             DELETE /admin/promotion_categories/:id(.:format)                                           spree/admin/promotion_categories#destroy
#                                                 admin_zones GET    /admin/zones(.:format)                                                              spree/admin/zones#index
#                                                             POST   /admin/zones(.:format)                                                              spree/admin/zones#create
#                                              new_admin_zone GET    /admin/zones/new(.:format)                                                          spree/admin/zones#new
#                                             edit_admin_zone GET    /admin/zones/:id/edit(.:format)                                                     spree/admin/zones#edit
#                                                  admin_zone GET    /admin/zones/:id(.:format)                                                          spree/admin/zones#show
#                                                             PATCH  /admin/zones/:id(.:format)                                                          spree/admin/zones#update
#                                                             PUT    /admin/zones/:id(.:format)                                                          spree/admin/zones#update
#                                                             DELETE /admin/zones/:id(.:format)                                                          spree/admin/zones#destroy
#                                        admin_country_states GET    /admin/countries/:country_id/states(.:format)                                       spree/admin/states#index
#                                                             POST   /admin/countries/:country_id/states(.:format)                                       spree/admin/states#create
#                                     new_admin_country_state GET    /admin/countries/:country_id/states/new(.:format)                                   spree/admin/states#new
#                                    edit_admin_country_state GET    /admin/countries/:country_id/states/:id/edit(.:format)                              spree/admin/states#edit
#                                         admin_country_state GET    /admin/countries/:country_id/states/:id(.:format)                                   spree/admin/states#show
#                                                             PATCH  /admin/countries/:country_id/states/:id(.:format)                                   spree/admin/states#update
#                                                             PUT    /admin/countries/:country_id/states/:id(.:format)                                   spree/admin/states#update
#                                                             DELETE /admin/countries/:country_id/states/:id(.:format)                                   spree/admin/states#destroy
#                                             admin_countries GET    /admin/countries(.:format)                                                          spree/admin/countries#index
#                                                             POST   /admin/countries(.:format)                                                          spree/admin/countries#create
#                                           new_admin_country GET    /admin/countries/new(.:format)                                                      spree/admin/countries#new
#                                          edit_admin_country GET    /admin/countries/:id/edit(.:format)                                                 spree/admin/countries#edit
#                                               admin_country GET    /admin/countries/:id(.:format)                                                      spree/admin/countries#show
#                                                             PATCH  /admin/countries/:id(.:format)                                                      spree/admin/countries#update
#                                                             PUT    /admin/countries/:id(.:format)                                                      spree/admin/countries#update
#                                                             DELETE /admin/countries/:id(.:format)                                                      spree/admin/countries#destroy
#                                                admin_states GET    /admin/states(.:format)                                                             spree/admin/states#index
#                                                             POST   /admin/states(.:format)                                                             spree/admin/states#create
#                                             new_admin_state GET    /admin/states/new(.:format)                                                         spree/admin/states#new
#                                            edit_admin_state GET    /admin/states/:id/edit(.:format)                                                    spree/admin/states#edit
#                                                 admin_state GET    /admin/states/:id(.:format)                                                         spree/admin/states#show
#                                                             PATCH  /admin/states/:id(.:format)                                                         spree/admin/states#update
#                                                             PUT    /admin/states/:id(.:format)                                                         spree/admin/states#update
#                                                             DELETE /admin/states/:id(.:format)                                                         spree/admin/states#destroy
#                                        admin_tax_categories GET    /admin/tax_categories(.:format)                                                     spree/admin/tax_categories#index
#                                                             POST   /admin/tax_categories(.:format)                                                     spree/admin/tax_categories#create
#                                      new_admin_tax_category GET    /admin/tax_categories/new(.:format)                                                 spree/admin/tax_categories#new
#                                     edit_admin_tax_category GET    /admin/tax_categories/:id/edit(.:format)                                            spree/admin/tax_categories#edit
#                                          admin_tax_category GET    /admin/tax_categories/:id(.:format)                                                 spree/admin/tax_categories#show
#                                                             PATCH  /admin/tax_categories/:id(.:format)                                                 spree/admin/tax_categories#update
#                                                             PUT    /admin/tax_categories/:id(.:format)                                                 spree/admin/tax_categories#update
#                                                             DELETE /admin/tax_categories/:id(.:format)                                                 spree/admin/tax_categories#destroy
#           update_positions_admin_product_product_properties POST   /admin/products/:product_id/product_properties/update_positions(.:format)           spree/admin/product_properties#update_positions
#                            admin_product_product_properties GET    /admin/products/:product_id/product_properties(.:format)                            spree/admin/product_properties#index
#                                                             POST   /admin/products/:product_id/product_properties(.:format)                            spree/admin/product_properties#create
#                          new_admin_product_product_property GET    /admin/products/:product_id/product_properties/new(.:format)                        spree/admin/product_properties#new
#                         edit_admin_product_product_property GET    /admin/products/:product_id/product_properties/:id/edit(.:format)                   spree/admin/product_properties#edit
#                              admin_product_product_property GET    /admin/products/:product_id/product_properties/:id(.:format)                        spree/admin/product_properties#show
#                                                             PATCH  /admin/products/:product_id/product_properties/:id(.:format)                        spree/admin/product_properties#update
#                                                             PUT    /admin/products/:product_id/product_properties/:id(.:format)                        spree/admin/product_properties#update
#                                                             DELETE /admin/products/:product_id/product_properties/:id(.:format)                        spree/admin/product_properties#destroy
# update_positions_admin_product_variant_property_rule_values POST   /admin/products/:product_id/variant_property_rule_values/update_positions(.:format) spree/admin/variant_property_rule_values#update_positions
#                   admin_product_variant_property_rule_value DELETE /admin/products/:product_id/variant_property_rule_values/:id(.:format)              spree/admin/variant_property_rule_values#destroy
#                       update_positions_admin_product_images POST   /admin/products/:product_id/images/update_positions(.:format)                       spree/admin/images#update_positions
#                                        admin_product_images GET    /admin/products/:product_id/images(.:format)                                        spree/admin/images#index
#                                                             POST   /admin/products/:product_id/images(.:format)                                        spree/admin/images#create
#                                     new_admin_product_image GET    /admin/products/:product_id/images/new(.:format)                                    spree/admin/images#new
#                                    edit_admin_product_image GET    /admin/products/:product_id/images/:id/edit(.:format)                               spree/admin/images#edit
#                                         admin_product_image GET    /admin/products/:product_id/images/:id(.:format)                                    spree/admin/images#show
#                                                             PATCH  /admin/products/:product_id/images/:id(.:format)                                    spree/admin/images#update
#                                                             PUT    /admin/products/:product_id/images/:id(.:format)                                    spree/admin/images#update
#                                                             DELETE /admin/products/:product_id/images/:id(.:format)                                    spree/admin/images#destroy
#                                         clone_admin_product GET    /admin/products/:id/clone(.:format)                                                 spree/admin/products#clone
#                     update_positions_admin_product_variants POST   /admin/products/:product_id/variants/update_positions(.:format)                     spree/admin/variants#update_positions
#                                      admin_product_variants GET    /admin/products/:product_id/variants(.:format)                                      spree/admin/variants#index
#                                                             POST   /admin/products/:product_id/variants(.:format)                                      spree/admin/variants#create
#                                   new_admin_product_variant GET    /admin/products/:product_id/variants/new(.:format)                                  spree/admin/variants#new
#                                  edit_admin_product_variant GET    /admin/products/:product_id/variants/:id/edit(.:format)                             spree/admin/variants#edit
#                                       admin_product_variant GET    /admin/products/:product_id/variants/:id(.:format)                                  spree/admin/variants#show
#                                                             PATCH  /admin/products/:product_id/variants/:id(.:format)                                  spree/admin/variants#update
#                                                             PUT    /admin/products/:product_id/variants/:id(.:format)                                  spree/admin/variants#update
#                                                             DELETE /admin/products/:product_id/variants/:id(.:format)                                  spree/admin/variants#destroy
#                     admin_product_variants_including_master PATCH  /admin/products/:product_id/variants_including_master/:id(.:format)                 spree/admin/variants_including_master#update
#                                                             PUT    /admin/products/:product_id/variants_including_master/:id(.:format)                 spree/admin/variants_including_master#update
#                                        admin_product_prices GET    /admin/products/:product_id/prices(.:format)                                        spree/admin/prices#index
#                                                             POST   /admin/products/:product_id/prices(.:format)                                        spree/admin/prices#create
#                                     new_admin_product_price GET    /admin/products/:product_id/prices/new(.:format)                                    spree/admin/prices#new
#                                    edit_admin_product_price GET    /admin/products/:product_id/prices/:id/edit(.:format)                               spree/admin/prices#edit
#                                         admin_product_price PATCH  /admin/products/:product_id/prices/:id(.:format)                                    spree/admin/prices#update
#                                                             PUT    /admin/products/:product_id/prices/:id(.:format)                                    spree/admin/prices#update
#                                                             DELETE /admin/products/:product_id/prices/:id(.:format)                                    spree/admin/prices#destroy
#                                              admin_products GET    /admin/products(.:format)                                                           spree/admin/products#index
#                                                             POST   /admin/products(.:format)                                                           spree/admin/products#create
#                                           new_admin_product GET    /admin/products/new(.:format)                                                       spree/admin/products#new
#                                          edit_admin_product GET    /admin/products/:id/edit(.:format)                                                  spree/admin/products#edit
#                                               admin_product GET    /admin/products/:id(.:format)                                                       spree/admin/products#show
#                                                             PATCH  /admin/products/:id(.:format)                                                       spree/admin/products#update
#                                                             PUT    /admin/products/:id(.:format)                                                       spree/admin/products#update
#                                                             DELETE /admin/products/:id(.:format)                                                       spree/admin/products#destroy
#                                         admin_product_stock GET    /admin/products/:product_slug/stock(.:format)                                       spree/admin/stock_items#index
#                         update_positions_admin_option_types POST   /admin/option_types/update_positions(.:format)                                      spree/admin/option_types#update_positions
#                  update_values_positions_admin_option_types POST   /admin/option_types/update_values_positions(.:format)                               spree/admin/option_types#update_values_positions
#                                          admin_option_types GET    /admin/option_types(.:format)                                                       spree/admin/option_types#index
#                                                             POST   /admin/option_types(.:format)                                                       spree/admin/option_types#create
#                                       new_admin_option_type GET    /admin/option_types/new(.:format)                                                   spree/admin/option_types#new
#                                      edit_admin_option_type GET    /admin/option_types/:id/edit(.:format)                                              spree/admin/option_types#edit
#                                           admin_option_type GET    /admin/option_types/:id(.:format)                                                   spree/admin/option_types#show
#                                                             PATCH  /admin/option_types/:id(.:format)                                                   spree/admin/option_types#update
#                                                             PUT    /admin/option_types/:id(.:format)                                                   spree/admin/option_types#update
#                                                             DELETE /admin/option_types/:id(.:format)                                                   spree/admin/option_types#destroy
#                                          admin_option_value DELETE /admin/option_values/:id(.:format)                                                  spree/admin/option_values#destroy
#                                   filtered_admin_properties GET    /admin/properties/filtered(.:format)                                                spree/admin/properties#filtered
#                                            admin_properties GET    /admin/properties(.:format)                                                         spree/admin/properties#index
#                                                             POST   /admin/properties(.:format)                                                         spree/admin/properties#create
#                                          new_admin_property GET    /admin/properties/new(.:format)                                                     spree/admin/properties#new
#                                         edit_admin_property GET    /admin/properties/:id/edit(.:format)                                                spree/admin/properties#edit
#                                              admin_property GET    /admin/properties/:id(.:format)                                                     spree/admin/properties#show
#                                                             PATCH  /admin/properties/:id(.:format)                                                     spree/admin/properties#update
#                                                             PUT    /admin/properties/:id(.:format)                                                     spree/admin/properties#update
#                                                             DELETE /admin/properties/:id(.:format)                                                     spree/admin/properties#destroy
#                                      admin_product_property DELETE /admin/product_properties/:id(.:format)                                             spree/admin/product_properties#destroy
#                                      select_admin_prototype GET    /admin/prototypes/:id/select(.:format)                                              spree/admin/prototypes#select
#                                  available_admin_prototypes GET    /admin/prototypes/available(.:format)                                               spree/admin/prototypes#available
#                                            admin_prototypes GET    /admin/prototypes(.:format)                                                         spree/admin/prototypes#index
#                                                             POST   /admin/prototypes(.:format)                                                         spree/admin/prototypes#create
#                                         new_admin_prototype GET    /admin/prototypes/new(.:format)                                                     spree/admin/prototypes#new
#                                        edit_admin_prototype GET    /admin/prototypes/:id/edit(.:format)                                                spree/admin/prototypes#edit
#                                             admin_prototype GET    /admin/prototypes/:id(.:format)                                                     spree/admin/prototypes#show
#                                                             PATCH  /admin/prototypes/:id(.:format)                                                     spree/admin/prototypes#update
#                                                             PUT    /admin/prototypes/:id(.:format)                                                     spree/admin/prototypes#update
#                                                             DELETE /admin/prototypes/:id(.:format)                                                     spree/admin/prototypes#destroy
#                                            cart_admin_order GET    /admin/orders/:id/cart(.:format)                                                    spree/admin/orders#cart
#                                         advance_admin_order PUT    /admin/orders/:id/advance(.:format)                                                 spree/admin/orders#advance
#                                         confirm_admin_order GET    /admin/orders/:id/confirm(.:format)                                                 spree/admin/orders#confirm
#                                        complete_admin_order PUT    /admin/orders/:id/complete(.:format)                                                spree/admin/orders#complete
#                                          resend_admin_order POST   /admin/orders/:id/resend(.:format)                                                  spree/admin/orders#resend
#                          adjustments_unfinalize_admin_order GET    /admin/orders/:id/adjustments/unfinalize(.:format)                                  spree/admin/orders#unfinalize_adjustments
#                            adjustments_finalize_admin_order GET    /admin/orders/:id/adjustments/finalize(.:format)                                    spree/admin/orders#finalize_adjustments
#                                         approve_admin_order PUT    /admin/orders/:id/approve(.:format)                                                 spree/admin/orders#approve
#                                          cancel_admin_order PUT    /admin/orders/:id/cancel(.:format)                                                  spree/admin/orders#cancel
#                                          resume_admin_order PUT    /admin/orders/:id/resume(.:format)                                                  spree/admin/orders#resume
#                                    new_admin_order_customer GET    /admin/orders/:order_id/customer/new(.:format)                                      spree/admin/orders/customer_details#new
#                                   edit_admin_order_customer GET    /admin/orders/:order_id/customer/edit(.:format)                                     spree/admin/orders/customer_details#edit
#                                        admin_order_customer GET    /admin/orders/:order_id/customer(.:format)                                          spree/admin/orders/customer_details#show
#                                                             PATCH  /admin/orders/:order_id/customer(.:format)                                          spree/admin/orders/customer_details#update
#                                                             PUT    /admin/orders/:order_id/customer(.:format)                                          spree/admin/orders/customer_details#update
#                                                             DELETE /admin/orders/:order_id/customer(.:format)                                          spree/admin/orders/customer_details#destroy
#                                                             POST   /admin/orders/:order_id/customer(.:format)                                          spree/admin/orders/customer_details#create
#                          refund_admin_order_customer_return PUT    /admin/orders/:order_id/customer_returns/:id/refund(.:format)                       spree/admin/customer_returns#refund
#                                admin_order_customer_returns GET    /admin/orders/:order_id/customer_returns(.:format)                                  spree/admin/customer_returns#index
#                                                             POST   /admin/orders/:order_id/customer_returns(.:format)                                  spree/admin/customer_returns#create
#                             new_admin_order_customer_return GET    /admin/orders/:order_id/customer_returns/new(.:format)                              spree/admin/customer_returns#new
#                            edit_admin_order_customer_return GET    /admin/orders/:order_id/customer_returns/:id/edit(.:format)                         spree/admin/customer_returns#edit
#                                 admin_order_customer_return PATCH  /admin/orders/:order_id/customer_returns/:id(.:format)                              spree/admin/customer_returns#update
#                                                             PUT    /admin/orders/:order_id/customer_returns/:id(.:format)                              spree/admin/customer_returns#update
#                                     admin_order_adjustments GET    /admin/orders/:order_id/adjustments(.:format)                                       spree/admin/adjustments#index
#                                                             POST   /admin/orders/:order_id/adjustments(.:format)                                       spree/admin/adjustments#create
#                                  new_admin_order_adjustment GET    /admin/orders/:order_id/adjustments/new(.:format)                                   spree/admin/adjustments#new
#                                 edit_admin_order_adjustment GET    /admin/orders/:order_id/adjustments/:id/edit(.:format)                              spree/admin/adjustments#edit
#                                      admin_order_adjustment GET    /admin/orders/:order_id/adjustments/:id(.:format)                                   spree/admin/adjustments#show
#                                                             PATCH  /admin/orders/:order_id/adjustments/:id(.:format)                                   spree/admin/adjustments#update
#                                                             PUT    /admin/orders/:order_id/adjustments/:id(.:format)                                   spree/admin/adjustments#update
#                                                             DELETE /admin/orders/:order_id/adjustments/:id(.:format)                                   spree/admin/adjustments#destroy
#                       fire_admin_order_return_authorization PUT    /admin/orders/:order_id/return_authorizations/:id/fire(.:format)                    spree/admin/return_authorizations#fire
#                           admin_order_return_authorizations GET    /admin/orders/:order_id/return_authorizations(.:format)                             spree/admin/return_authorizations#index
#                                                             POST   /admin/orders/:order_id/return_authorizations(.:format)                             spree/admin/return_authorizations#create
#                        new_admin_order_return_authorization GET    /admin/orders/:order_id/return_authorizations/new(.:format)                         spree/admin/return_authorizations#new
#                       edit_admin_order_return_authorization GET    /admin/orders/:order_id/return_authorizations/:id/edit(.:format)                    spree/admin/return_authorizations#edit
#                            admin_order_return_authorization GET    /admin/orders/:order_id/return_authorizations/:id(.:format)                         spree/admin/return_authorizations#show
#                                                             PATCH  /admin/orders/:order_id/return_authorizations/:id(.:format)                         spree/admin/return_authorizations#update
#                                                             PUT    /admin/orders/:order_id/return_authorizations/:id(.:format)                         spree/admin/return_authorizations#update
#                                                             DELETE /admin/orders/:order_id/return_authorizations/:id(.:format)                         spree/admin/return_authorizations#destroy
#                                    fire_admin_order_payment PUT    /admin/orders/:order_id/payments/:id/fire(.:format)                                 spree/admin/payments#fire
#                             admin_order_payment_log_entries GET    /admin/orders/:order_id/payments/:payment_id/log_entries(.:format)                  spree/admin/log_entries#index
#                                                             POST   /admin/orders/:order_id/payments/:payment_id/log_entries(.:format)                  spree/admin/log_entries#create
#                           new_admin_order_payment_log_entry GET    /admin/orders/:order_id/payments/:payment_id/log_entries/new(.:format)              spree/admin/log_entries#new
#                          edit_admin_order_payment_log_entry GET    /admin/orders/:order_id/payments/:payment_id/log_entries/:id/edit(.:format)         spree/admin/log_entries#edit
#                               admin_order_payment_log_entry GET    /admin/orders/:order_id/payments/:payment_id/log_entries/:id(.:format)              spree/admin/log_entries#show
#                                                             PATCH  /admin/orders/:order_id/payments/:payment_id/log_entries/:id(.:format)              spree/admin/log_entries#update
#                                                             PUT    /admin/orders/:order_id/payments/:payment_id/log_entries/:id(.:format)              spree/admin/log_entries#update
#                                                             DELETE /admin/orders/:order_id/payments/:payment_id/log_entries/:id(.:format)              spree/admin/log_entries#destroy
#                                 admin_order_payment_refunds POST   /admin/orders/:order_id/payments/:payment_id/refunds(.:format)                      spree/admin/refunds#create
#                              new_admin_order_payment_refund GET    /admin/orders/:order_id/payments/:payment_id/refunds/new(.:format)                  spree/admin/refunds#new
#                             edit_admin_order_payment_refund GET    /admin/orders/:order_id/payments/:payment_id/refunds/:id/edit(.:format)             spree/admin/refunds#edit
#                                  admin_order_payment_refund PATCH  /admin/orders/:order_id/payments/:payment_id/refunds/:id(.:format)                  spree/admin/refunds#update
#                                                             PUT    /admin/orders/:order_id/payments/:payment_id/refunds/:id(.:format)                  spree/admin/refunds#update
#                                        admin_order_payments GET    /admin/orders/:order_id/payments(.:format)                                          spree/admin/payments#index
#                                                             POST   /admin/orders/:order_id/payments(.:format)                                          spree/admin/payments#create
#                                     new_admin_order_payment GET    /admin/orders/:order_id/payments/new(.:format)                                      spree/admin/payments#new
#                                         admin_order_payment GET    /admin/orders/:order_id/payments/:id(.:format)                                      spree/admin/payments#show
#                           perform_admin_order_reimbursement POST   /admin/orders/:order_id/reimbursements/:id/perform(.:format)                        spree/admin/reimbursements#perform
#                                  admin_order_reimbursements GET    /admin/orders/:order_id/reimbursements(.:format)                                    spree/admin/reimbursements#index
#                                                             POST   /admin/orders/:order_id/reimbursements(.:format)                                    spree/admin/reimbursements#create
#                              edit_admin_order_reimbursement GET    /admin/orders/:order_id/reimbursements/:id/edit(.:format)                           spree/admin/reimbursements#edit
#                                   admin_order_reimbursement GET    /admin/orders/:order_id/reimbursements/:id(.:format)                                spree/admin/reimbursements#show
#                                                             PATCH  /admin/orders/:order_id/reimbursements/:id(.:format)                                spree/admin/reimbursements#update
#                                                             PUT    /admin/orders/:order_id/reimbursements/:id(.:format)                                spree/admin/reimbursements#update
#                        short_ship_admin_order_cancellations POST   /admin/orders/:order_id/cancellations/short_ship(.:format)                          spree/admin/cancellations#short_ship
#                                   admin_order_cancellations GET    /admin/orders/:order_id/cancellations(.:format)                                     spree/admin/cancellations#index
#                                                admin_orders GET    /admin/orders(.:format)                                                             spree/admin/orders#index
#                                                             POST   /admin/orders(.:format)                                                             spree/admin/orders#create
#                                             new_admin_order GET    /admin/orders/new(.:format)                                                         spree/admin/orders#new
#                                            edit_admin_order GET    /admin/orders/:id/edit(.:format)                                                    spree/admin/orders#edit
#                                                 admin_order PATCH  /admin/orders/:id(.:format)                                                         spree/admin/orders#update
#                                                             PUT    /admin/orders/:id(.:format)                                                         spree/admin/orders#update
#                                                             DELETE /admin/orders/:id(.:format)                                                         spree/admin/orders#destroy
#                                 edit_admin_general_settings GET    /admin/general_settings/edit(.:format)                                              spree/admin/general_settings#edit
#                                      admin_general_settings PATCH  /admin/general_settings(.:format)                                                   spree/admin/general_settings#update
#                                                             PUT    /admin/general_settings(.:format)                                                   spree/admin/general_settings#update
#                                           admin_return_item PATCH  /admin/return_items/:id(.:format)                                                   spree/admin/return_items#update
#                                                             PUT    /admin/return_items/:id(.:format)                                                   spree/admin/return_items#update
#                           update_positions_admin_taxonomies POST   /admin/taxonomies/update_positions(.:format)                                        spree/admin/taxonomies#update_positions
#                                       admin_taxonomy_taxons GET    /admin/taxonomies/:taxonomy_id/taxons(.:format)                                     spree/admin/taxons#index
#                                                             POST   /admin/taxonomies/:taxonomy_id/taxons(.:format)                                     spree/admin/taxons#create
#                                    new_admin_taxonomy_taxon GET    /admin/taxonomies/:taxonomy_id/taxons/new(.:format)                                 spree/admin/taxons#new
#                                   edit_admin_taxonomy_taxon GET    /admin/taxonomies/:taxonomy_id/taxons/:id/edit(.:format)                            spree/admin/taxons#edit
#                                        admin_taxonomy_taxon GET    /admin/taxonomies/:taxonomy_id/taxons/:id(.:format)                                 spree/admin/taxons#show
#                                                             PATCH  /admin/taxonomies/:taxonomy_id/taxons/:id(.:format)                                 spree/admin/taxons#update
#                                                             PUT    /admin/taxonomies/:taxonomy_id/taxons/:id(.:format)                                 spree/admin/taxons#update
#                                                             DELETE /admin/taxonomies/:taxonomy_id/taxons/:id(.:format)                                 spree/admin/taxons#destroy
#                                            admin_taxonomies GET    /admin/taxonomies(.:format)                                                         spree/admin/taxonomies#index
#                                                             POST   /admin/taxonomies(.:format)                                                         spree/admin/taxonomies#create
#                                          new_admin_taxonomy GET    /admin/taxonomies/new(.:format)                                                     spree/admin/taxonomies#new
#                                         edit_admin_taxonomy GET    /admin/taxonomies/:id/edit(.:format)                                                spree/admin/taxonomies#edit
#                                              admin_taxonomy GET    /admin/taxonomies/:id(.:format)                                                     spree/admin/taxonomies#show
#                                                             PATCH  /admin/taxonomies/:id(.:format)                                                     spree/admin/taxonomies#update
#                                                             PUT    /admin/taxonomies/:id(.:format)                                                     spree/admin/taxonomies#update
#                                                             DELETE /admin/taxonomies/:id(.:format)                                                     spree/admin/taxonomies#destroy
#                                         search_admin_taxons GET    /admin/taxons/search(.:format)                                                      spree/admin/taxons#search
#                                                admin_taxons GET    /admin/taxons(.:format)                                                             spree/admin/taxons#index
#                                                 admin_taxon GET    /admin/taxons/:id(.:format)                                                         spree/admin/taxons#show
#                                   sales_total_admin_reports GET    /admin/reports/sales_total(.:format)                                                spree/admin/reports#sales_total
#                                                             POST   /admin/reports/sales_total(.:format)                                                spree/admin/reports#sales_total
#                                               admin_reports GET    /admin/reports(.:format)                                                            spree/admin/reports#index
#                                   admin_reimbursement_types GET    /admin/reimbursement_types(.:format)                                                spree/admin/reimbursement_types#index
#                                    admin_adjustment_reasons GET    /admin/adjustment_reasons(.:format)                                                 spree/admin/adjustment_reasons#index
#                                                             POST   /admin/adjustment_reasons(.:format)                                                 spree/admin/adjustment_reasons#create
#                                 new_admin_adjustment_reason GET    /admin/adjustment_reasons/new(.:format)                                             spree/admin/adjustment_reasons#new
#                                edit_admin_adjustment_reason GET    /admin/adjustment_reasons/:id/edit(.:format)                                        spree/admin/adjustment_reasons#edit
#                                     admin_adjustment_reason PATCH  /admin/adjustment_reasons/:id(.:format)                                             spree/admin/adjustment_reasons#update
#                                                             PUT    /admin/adjustment_reasons/:id(.:format)                                             spree/admin/adjustment_reasons#update
#                                        admin_refund_reasons GET    /admin/refund_reasons(.:format)                                                     spree/admin/refund_reasons#index
#                                                             POST   /admin/refund_reasons(.:format)                                                     spree/admin/refund_reasons#create
#                                     new_admin_refund_reason GET    /admin/refund_reasons/new(.:format)                                                 spree/admin/refund_reasons#new
#                                    edit_admin_refund_reason GET    /admin/refund_reasons/:id/edit(.:format)                                            spree/admin/refund_reasons#edit
#                                         admin_refund_reason PATCH  /admin/refund_reasons/:id(.:format)                                                 spree/admin/refund_reasons#update
#                                                             PUT    /admin/refund_reasons/:id(.:format)                                                 spree/admin/refund_reasons#update
#                                        admin_return_reasons GET    /admin/return_reasons(.:format)                                                     spree/admin/return_reasons#index
#                                                             POST   /admin/return_reasons(.:format)                                                     spree/admin/return_reasons#create
#                                     new_admin_return_reason GET    /admin/return_reasons/new(.:format)                                                 spree/admin/return_reasons#new
#                                    edit_admin_return_reason GET    /admin/return_reasons/:id/edit(.:format)                                            spree/admin/return_reasons#edit
#                                         admin_return_reason PATCH  /admin/return_reasons/:id(.:format)                                                 spree/admin/return_reasons#update
#                                                             PUT    /admin/return_reasons/:id(.:format)                                                 spree/admin/return_reasons#update
#                                      admin_shipping_methods GET    /admin/shipping_methods(.:format)                                                   spree/admin/shipping_methods#index
#                                                             POST   /admin/shipping_methods(.:format)                                                   spree/admin/shipping_methods#create
#                                   new_admin_shipping_method GET    /admin/shipping_methods/new(.:format)                                               spree/admin/shipping_methods#new
#                                  edit_admin_shipping_method GET    /admin/shipping_methods/:id/edit(.:format)                                          spree/admin/shipping_methods#edit
#                                       admin_shipping_method GET    /admin/shipping_methods/:id(.:format)                                               spree/admin/shipping_methods#show
#                                                             PATCH  /admin/shipping_methods/:id(.:format)                                               spree/admin/shipping_methods#update
#                                                             PUT    /admin/shipping_methods/:id(.:format)                                               spree/admin/shipping_methods#update
#                                                             DELETE /admin/shipping_methods/:id(.:format)                                               spree/admin/shipping_methods#destroy
#                                   admin_shipping_categories GET    /admin/shipping_categories(.:format)                                                spree/admin/shipping_categories#index
#                                                             POST   /admin/shipping_categories(.:format)                                                spree/admin/shipping_categories#create
#                                 new_admin_shipping_category GET    /admin/shipping_categories/new(.:format)                                            spree/admin/shipping_categories#new
#                                edit_admin_shipping_category GET    /admin/shipping_categories/:id/edit(.:format)                                       spree/admin/shipping_categories#edit
#                                     admin_shipping_category GET    /admin/shipping_categories/:id(.:format)                                            spree/admin/shipping_categories#show
#                                                             PATCH  /admin/shipping_categories/:id(.:format)                                            spree/admin/shipping_categories#update
#                                                             PUT    /admin/shipping_categories/:id(.:format)                                            spree/admin/shipping_categories#update
#                                                             DELETE /admin/shipping_categories/:id(.:format)                                            spree/admin/shipping_categories#destroy
#                                receive_admin_stock_transfer GET    /admin/stock_transfers/:id/receive(.:format)                                        spree/admin/stock_transfers#receive
#                               finalize_admin_stock_transfer PUT    /admin/stock_transfers/:id/finalize(.:format)                                       spree/admin/stock_transfers#finalize
#                                  close_admin_stock_transfer PUT    /admin/stock_transfers/:id/close(.:format)                                          spree/admin/stock_transfers#close
#                          tracking_info_admin_stock_transfer GET    /admin/stock_transfers/:id/tracking_info(.:format)                                  spree/admin/stock_transfers#tracking_info
#                                   ship_admin_stock_transfer PUT    /admin/stock_transfers/:id/ship(.:format)                                           spree/admin/stock_transfers#ship
#                                       admin_stock_transfers GET    /admin/stock_transfers(.:format)                                                    spree/admin/stock_transfers#index
#                                                             POST   /admin/stock_transfers(.:format)                                                    spree/admin/stock_transfers#create
#                                    new_admin_stock_transfer GET    /admin/stock_transfers/new(.:format)                                                spree/admin/stock_transfers#new
#                                   edit_admin_stock_transfer GET    /admin/stock_transfers/:id/edit(.:format)                                           spree/admin/stock_transfers#edit
#                                        admin_stock_transfer GET    /admin/stock_transfers/:id(.:format)                                                spree/admin/stock_transfers#show
#                                                             PATCH  /admin/stock_transfers/:id(.:format)                                                spree/admin/stock_transfers#update
#                                                             PUT    /admin/stock_transfers/:id(.:format)                                                spree/admin/stock_transfers#update
#                        admin_stock_location_stock_movements GET    /admin/stock_locations/:stock_location_id/stock_movements(.:format)                 spree/admin/stock_movements#index
#                                                             POST   /admin/stock_locations/:stock_location_id/stock_movements(.:format)                 spree/admin/stock_movements#create
#                     new_admin_stock_location_stock_movement GET    /admin/stock_locations/:stock_location_id/stock_movements/new(.:format)             spree/admin/stock_movements#new
#                         admin_stock_location_stock_movement GET    /admin/stock_locations/:stock_location_id/stock_movements/:id(.:format)             spree/admin/stock_movements#show
#                        transfer_stock_admin_stock_locations POST   /admin/stock_locations/transfer_stock(.:format)                                     spree/admin/stock_locations#transfer_stock
#                      update_positions_admin_stock_locations POST   /admin/stock_locations/update_positions(.:format)                                   spree/admin/stock_locations#update_positions
#                                       admin_stock_locations GET    /admin/stock_locations(.:format)                                                    spree/admin/stock_locations#index
#                                                             POST   /admin/stock_locations(.:format)                                                    spree/admin/stock_locations#create
#                                    new_admin_stock_location GET    /admin/stock_locations/new(.:format)                                                spree/admin/stock_locations#new
#                                   edit_admin_stock_location GET    /admin/stock_locations/:id/edit(.:format)                                           spree/admin/stock_locations#edit
#                                        admin_stock_location GET    /admin/stock_locations/:id(.:format)                                                spree/admin/stock_locations#show
#                                                             PATCH  /admin/stock_locations/:id(.:format)                                                spree/admin/stock_locations#update
#                                                             PUT    /admin/stock_locations/:id(.:format)                                                spree/admin/stock_locations#update
#                                                             DELETE /admin/stock_locations/:id(.:format)                                                spree/admin/stock_locations#destroy
#                                           admin_stock_items GET    /admin/stock_items(.:format)                                                        spree/admin/stock_items#index
#                                                             POST   /admin/stock_items(.:format)                                                        spree/admin/stock_items#create
#                                            admin_stock_item PATCH  /admin/stock_items/:id(.:format)                                                    spree/admin/stock_items#update
#                                                             PUT    /admin/stock_items/:id(.:format)                                                    spree/admin/stock_items#update
#                                                             DELETE /admin/stock_items/:id(.:format)                                                    spree/admin/stock_items#destroy
#                                             admin_tax_rates GET    /admin/tax_rates(.:format)                                                          spree/admin/tax_rates#index
#                                                             POST   /admin/tax_rates(.:format)                                                          spree/admin/tax_rates#create
#                                          new_admin_tax_rate GET    /admin/tax_rates/new(.:format)                                                      spree/admin/tax_rates#new
#                                         edit_admin_tax_rate GET    /admin/tax_rates/:id/edit(.:format)                                                 spree/admin/tax_rates#edit
#                                              admin_tax_rate GET    /admin/tax_rates/:id(.:format)                                                      spree/admin/tax_rates#show
#                                                             PATCH  /admin/tax_rates/:id(.:format)                                                      spree/admin/tax_rates#update
#                                                             PUT    /admin/tax_rates/:id(.:format)                                                      spree/admin/tax_rates#update
#                                                             DELETE /admin/tax_rates/:id(.:format)                                                      spree/admin/tax_rates#destroy
#                                              admin_trackers GET    /admin/trackers(.:format)                                                           spree/admin/trackers#index
#                                                             POST   /admin/trackers(.:format)                                                           spree/admin/trackers#create
#                                           new_admin_tracker GET    /admin/trackers/new(.:format)                                                       spree/admin/trackers#new
#                                          edit_admin_tracker GET    /admin/trackers/:id/edit(.:format)                                                  spree/admin/trackers#edit
#                                               admin_tracker GET    /admin/trackers/:id(.:format)                                                       spree/admin/trackers#show
#                                                             PATCH  /admin/trackers/:id(.:format)                                                       spree/admin/trackers#update
#                                                             PUT    /admin/trackers/:id(.:format)                                                       spree/admin/trackers#update
#                                                             DELETE /admin/trackers/:id(.:format)                                                       spree/admin/trackers#destroy
#                      update_positions_admin_payment_methods POST   /admin/payment_methods/update_positions(.:format)                                   spree/admin/payment_methods#update_positions
#                                       admin_payment_methods GET    /admin/payment_methods(.:format)                                                    spree/admin/payment_methods#index
#                                                             POST   /admin/payment_methods(.:format)                                                    spree/admin/payment_methods#create
#                                    new_admin_payment_method GET    /admin/payment_methods/new(.:format)                                                spree/admin/payment_methods#new
#                                   edit_admin_payment_method GET    /admin/payment_methods/:id/edit(.:format)                                           spree/admin/payment_methods#edit
#                                        admin_payment_method GET    /admin/payment_methods/:id(.:format)                                                spree/admin/payment_methods#show
#                                                             PATCH  /admin/payment_methods/:id(.:format)                                                spree/admin/payment_methods#update
#                                                             PUT    /admin/payment_methods/:id(.:format)                                                spree/admin/payment_methods#update
#                                                             DELETE /admin/payment_methods/:id(.:format)                                                spree/admin/payment_methods#destroy
#                                           orders_admin_user GET    /admin/users/:id/orders(.:format)                                                   spree/admin/users#orders
#                                            items_admin_user GET    /admin/users/:id/items(.:format)                                                    spree/admin/users#items
#                                        addresses_admin_user GET    /admin/users/:id/addresses(.:format)                                                spree/admin/users#addresses
#                                                             PUT    /admin/users/:id/addresses(.:format)                                                spree/admin/users#addresses
#                         edit_amount_admin_user_store_credit GET    /admin/users/:user_id/store_credits/:id/edit_amount(.:format)                       spree/admin/store_credits#edit_amount
#                       update_amount_admin_user_store_credit PUT    /admin/users/:user_id/store_credits/:id/update_amount(.:format)                     spree/admin/store_credits#update_amount
#                       edit_validity_admin_user_store_credit GET    /admin/users/:user_id/store_credits/:id/edit_validity(.:format)                     spree/admin/store_credits#edit_validity
#                          invalidate_admin_user_store_credit PUT    /admin/users/:user_id/store_credits/:id/invalidate(.:format)                        spree/admin/store_credits#invalidate
#                                    admin_user_store_credits GET    /admin/users/:user_id/store_credits(.:format)                                       spree/admin/store_credits#index
#                                                             POST   /admin/users/:user_id/store_credits(.:format)                                       spree/admin/store_credits#create
#                                 new_admin_user_store_credit GET    /admin/users/:user_id/store_credits/new(.:format)                                   spree/admin/store_credits#new
#                                edit_admin_user_store_credit GET    /admin/users/:user_id/store_credits/:id/edit(.:format)                              spree/admin/store_credits#edit
#                                     admin_user_store_credit GET    /admin/users/:user_id/store_credits/:id(.:format)                                   spree/admin/store_credits#show
#                                                             PATCH  /admin/users/:user_id/store_credits/:id(.:format)                                   spree/admin/store_credits#update
#                                                             PUT    /admin/users/:user_id/store_credits/:id(.:format)                                   spree/admin/store_credits#update
#                                                 admin_users GET    /admin/users(.:format)                                                              spree/admin/users#index
#                                                             POST   /admin/users(.:format)                                                              spree/admin/users#create
#                                              new_admin_user GET    /admin/users/new(.:format)                                                          spree/admin/users#new
#                                             edit_admin_user GET    /admin/users/:id/edit(.:format)                                                     spree/admin/users#edit
#                                                  admin_user GET    /admin/users/:id(.:format)                                                          spree/admin/users#show
#                                                             PATCH  /admin/users/:id(.:format)                                                          spree/admin/users#update
#                                                             PUT    /admin/users/:id(.:format)                                                          spree/admin/users#update
#                                                             DELETE /admin/users/:id(.:format)                                                          spree/admin/users#destroy
#                                     admin_style_guide_index GET    /admin/style_guide(.:format)                                                        spree/admin/style_guide#index
#                                                       admin GET    /admin(.:format)                                                                    spree/admin/root#index
#                                 generate_api_key_admin_user PUT    /admin/users/:id/generate_api_key(.:format)                                         spree/admin/users#generate_api_key
#                                    clear_api_key_admin_user PUT    /admin/users/:id/clear_api_key(.:format)                                            spree/admin/users#clear_api_key
#                                                             GET    /admin/users(.:format)                                                              spree/admin/users#index
#                                                             POST   /admin/users(.:format)                                                              spree/admin/users#create
#                                                             GET    /admin/users/new(.:format)                                                          spree/admin/users#new
#                                                             GET    /admin/users/:id/edit(.:format)                                                     spree/admin/users#edit
#                                                             GET    /admin/users/:id(.:format)                                                          spree/admin/users#show
#                                                             PATCH  /admin/users/:id(.:format)                                                          spree/admin/users#update
#                                                             PUT    /admin/users/:id(.:format)                                                          spree/admin/users#update
#                                                             DELETE /admin/users/:id(.:format)                                                          spree/admin/users#destroy
#                                               api_promotion GET    /api/promotions/:id(.:format)                                                       spree/api/promotions#show {:format=>"json"}
#                                          api_product_images GET    /api/products/:product_id/images(.:format)                                          spree/api/images#index {:format=>"json"}
#                                                             POST   /api/products/:product_id/images(.:format)                                          spree/api/images#create {:format=>"json"}
#                                       new_api_product_image GET    /api/products/:product_id/images/new(.:format)                                      spree/api/images#new {:format=>"json"}
#                                      edit_api_product_image GET    /api/products/:product_id/images/:id/edit(.:format)                                 spree/api/images#edit {:format=>"json"}
#                                           api_product_image GET    /api/products/:product_id/images/:id(.:format)                                      spree/api/images#show {:format=>"json"}
#                                                             PATCH  /api/products/:product_id/images/:id(.:format)                                      spree/api/images#update {:format=>"json"}
#                                                             PUT    /api/products/:product_id/images/:id(.:format)                                      spree/api/images#update {:format=>"json"}
#                                                             DELETE /api/products/:product_id/images/:id(.:format)                                      spree/api/images#destroy {:format=>"json"}
#                                        api_product_variants GET    /api/products/:product_id/variants(.:format)                                        spree/api/variants#index {:format=>"json"}
#                                                             POST   /api/products/:product_id/variants(.:format)                                        spree/api/variants#create {:format=>"json"}
#                                     new_api_product_variant GET    /api/products/:product_id/variants/new(.:format)                                    spree/api/variants#new {:format=>"json"}
#                                    edit_api_product_variant GET    /api/products/:product_id/variants/:id/edit(.:format)                               spree/api/variants#edit {:format=>"json"}
#                                         api_product_variant GET    /api/products/:product_id/variants/:id(.:format)                                    spree/api/variants#show {:format=>"json"}
#                                                             PATCH  /api/products/:product_id/variants/:id(.:format)                                    spree/api/variants#update {:format=>"json"}
#                                                             PUT    /api/products/:product_id/variants/:id(.:format)                                    spree/api/variants#update {:format=>"json"}
#                                                             DELETE /api/products/:product_id/variants/:id(.:format)                                    spree/api/variants#destroy {:format=>"json"}
#                              api_product_product_properties GET    /api/products/:product_id/product_properties(.:format)                              spree/api/product_properties#index {:format=>"json"}
#                                                             POST   /api/products/:product_id/product_properties(.:format)                              spree/api/product_properties#create {:format=>"json"}
#                            new_api_product_product_property GET    /api/products/:product_id/product_properties/new(.:format)                          spree/api/product_properties#new {:format=>"json"}
#                           edit_api_product_product_property GET    /api/products/:product_id/product_properties/:id/edit(.:format)                     spree/api/product_properties#edit {:format=>"json"}
#                                api_product_product_property GET    /api/products/:product_id/product_properties/:id(.:format)                          spree/api/product_properties#show {:format=>"json"}
#                                                             PATCH  /api/products/:product_id/product_properties/:id(.:format)                          spree/api/product_properties#update {:format=>"json"}
#                                                             PUT    /api/products/:product_id/product_properties/:id(.:format)                          spree/api/product_properties#update {:format=>"json"}
#                                                             DELETE /api/products/:product_id/product_properties/:id(.:format)                          spree/api/product_properties#destroy {:format=>"json"}
#                                                api_products GET    /api/products(.:format)                                                             spree/api/products#index {:format=>"json"}
#                                                             POST   /api/products(.:format)                                                             spree/api/products#create {:format=>"json"}
#                                             new_api_product GET    /api/products/new(.:format)                                                         spree/api/products#new {:format=>"json"}
#                                            edit_api_product GET    /api/products/:id/edit(.:format)                                                    spree/api/products#edit {:format=>"json"}
#                                                 api_product GET    /api/products/:id(.:format)                                                         spree/api/products#show {:format=>"json"}
#                                                             PATCH  /api/products/:id(.:format)                                                         spree/api/products#update {:format=>"json"}
#                                                             PUT    /api/products/:id(.:format)                                                         spree/api/products#update {:format=>"json"}
#                                                             DELETE /api/products/:id(.:format)                                                         spree/api/products#destroy {:format=>"json"}
#                                           next_api_checkout PUT    /api/checkouts/:id/next(.:format)                                                   spree/api/checkouts#next {:format=>"json"}
#                                        advance_api_checkout PUT    /api/checkouts/:id/advance(.:format)                                                spree/api/checkouts#advance {:format=>"json"}
#                                       complete_api_checkout PUT    /api/checkouts/:id/complete(.:format)                                               spree/api/checkouts#complete {:format=>"json"}
#                                         cancel_api_checkout PUT    /api/checkouts/:id/cancel(.:format)                                                 spree/api/checkouts#cancel {:format=>"json"}
#                                          empty_api_checkout PUT    /api/checkouts/:id/empty(.:format)                                                  spree/api/checkouts#empty {:format=>"json"}
#                              apply_coupon_code_api_checkout PUT    /api/checkouts/:id/apply_coupon_code(.:format)                                      spree/api/checkouts#apply_coupon_code {:format=>"json"}
#                                     api_checkout_line_items GET    /api/checkouts/:checkout_id/line_items(.:format)                                    spree/api/line_items#index {:format=>"json"}
#                                                             POST   /api/checkouts/:checkout_id/line_items(.:format)                                    spree/api/line_items#create {:format=>"json"}
#                                  new_api_checkout_line_item GET    /api/checkouts/:checkout_id/line_items/new(.:format)                                spree/api/line_items#new {:format=>"json"}
#                                 edit_api_checkout_line_item GET    /api/checkouts/:checkout_id/line_items/:id/edit(.:format)                           spree/api/line_items#edit {:format=>"json"}
#                                      api_checkout_line_item GET    /api/checkouts/:checkout_id/line_items/:id(.:format)                                spree/api/line_items#show {:format=>"json"}
#                                                             PATCH  /api/checkouts/:checkout_id/line_items/:id(.:format)                                spree/api/line_items#update {:format=>"json"}
#                                                             PUT    /api/checkouts/:checkout_id/line_items/:id(.:format)                                spree/api/line_items#update {:format=>"json"}
#                                                             DELETE /api/checkouts/:checkout_id/line_items/:id(.:format)                                spree/api/line_items#destroy {:format=>"json"}
#                              authorize_api_checkout_payment PUT    /api/checkouts/:checkout_id/payments/:id/authorize(.:format)                        spree/api/payments#authorize {:format=>"json"}
#                                capture_api_checkout_payment PUT    /api/checkouts/:checkout_id/payments/:id/capture(.:format)                          spree/api/payments#capture {:format=>"json"}
#                               purchase_api_checkout_payment PUT    /api/checkouts/:checkout_id/payments/:id/purchase(.:format)                         spree/api/payments#purchase {:format=>"json"}
#                                   void_api_checkout_payment PUT    /api/checkouts/:checkout_id/payments/:id/void(.:format)                             spree/api/payments#void {:format=>"json"}
#                                 credit_api_checkout_payment PUT    /api/checkouts/:checkout_id/payments/:id/credit(.:format)                           spree/api/payments#credit {:format=>"json"}
#                                       api_checkout_payments GET    /api/checkouts/:checkout_id/payments(.:format)                                      spree/api/payments#index {:format=>"json"}
#                                                             POST   /api/checkouts/:checkout_id/payments(.:format)                                      spree/api/payments#create {:format=>"json"}
#                                    new_api_checkout_payment GET    /api/checkouts/:checkout_id/payments/new(.:format)                                  spree/api/payments#new {:format=>"json"}
#                                   edit_api_checkout_payment GET    /api/checkouts/:checkout_id/payments/:id/edit(.:format)                             spree/api/payments#edit {:format=>"json"}
#                                        api_checkout_payment GET    /api/checkouts/:checkout_id/payments/:id(.:format)                                  spree/api/payments#show {:format=>"json"}
#                                                             PATCH  /api/checkouts/:checkout_id/payments/:id(.:format)                                  spree/api/payments#update {:format=>"json"}
#                                                             PUT    /api/checkouts/:checkout_id/payments/:id(.:format)                                  spree/api/payments#update {:format=>"json"}
#                                                             DELETE /api/checkouts/:checkout_id/payments/:id(.:format)                                  spree/api/payments#destroy {:format=>"json"}
#                                        api_checkout_address GET    /api/checkouts/:checkout_id/addresses/:id(.:format)                                 spree/api/addresses#show {:format=>"json"}
#                                                             PATCH  /api/checkouts/:checkout_id/addresses/:id(.:format)                                 spree/api/addresses#update {:format=>"json"}
#                                                             PUT    /api/checkouts/:checkout_id/addresses/:id(.:format)                                 spree/api/addresses#update {:format=>"json"}
#                       add_api_checkout_return_authorization PUT    /api/checkouts/:checkout_id/return_authorizations/:id/add(.:format)                 spree/api/return_authorizations#add {:format=>"json"}
#                    cancel_api_checkout_return_authorization PUT    /api/checkouts/:checkout_id/return_authorizations/:id/cancel(.:format)              spree/api/return_authorizations#cancel {:format=>"json"}
#                   receive_api_checkout_return_authorization PUT    /api/checkouts/:checkout_id/return_authorizations/:id/receive(.:format)             spree/api/return_authorizations#receive {:format=>"json"}
#                          api_checkout_return_authorizations GET    /api/checkouts/:checkout_id/return_authorizations(.:format)                         spree/api/return_authorizations#index {:format=>"json"}
#                                                             POST   /api/checkouts/:checkout_id/return_authorizations(.:format)                         spree/api/return_authorizations#create {:format=>"json"}
#                       new_api_checkout_return_authorization GET    /api/checkouts/:checkout_id/return_authorizations/new(.:format)                     spree/api/return_authorizations#new {:format=>"json"}
#                      edit_api_checkout_return_authorization GET    /api/checkouts/:checkout_id/return_authorizations/:id/edit(.:format)                spree/api/return_authorizations#edit {:format=>"json"}
#                           api_checkout_return_authorization GET    /api/checkouts/:checkout_id/return_authorizations/:id(.:format)                     spree/api/return_authorizations#show {:format=>"json"}
#                                                             PATCH  /api/checkouts/:checkout_id/return_authorizations/:id(.:format)                     spree/api/return_authorizations#update {:format=>"json"}
#                                                             PUT    /api/checkouts/:checkout_id/return_authorizations/:id(.:format)                     spree/api/return_authorizations#update {:format=>"json"}
#                                                             DELETE /api/checkouts/:checkout_id/return_authorizations/:id(.:format)                     spree/api/return_authorizations#destroy {:format=>"json"}
#                                                api_checkout PATCH  /api/checkouts/:id(.:format)                                                        spree/api/checkouts#update {:format=>"json"}
#                                                             PUT    /api/checkouts/:id(.:format)                                                        spree/api/checkouts#update {:format=>"json"}
#                                          api_variant_images GET    /api/variants/:variant_id/images(.:format)                                          spree/api/images#index {:format=>"json"}
#                                                             POST   /api/variants/:variant_id/images(.:format)                                          spree/api/images#create {:format=>"json"}
#                                       new_api_variant_image GET    /api/variants/:variant_id/images/new(.:format)                                      spree/api/images#new {:format=>"json"}
#                                      edit_api_variant_image GET    /api/variants/:variant_id/images/:id/edit(.:format)                                 spree/api/images#edit {:format=>"json"}
#                                           api_variant_image GET    /api/variants/:variant_id/images/:id(.:format)                                      spree/api/images#show {:format=>"json"}
#                                                             PATCH  /api/variants/:variant_id/images/:id(.:format)                                      spree/api/images#update {:format=>"json"}
#                                                             PUT    /api/variants/:variant_id/images/:id(.:format)                                      spree/api/images#update {:format=>"json"}
#                                                             DELETE /api/variants/:variant_id/images/:id(.:format)                                      spree/api/images#destroy {:format=>"json"}
#                                                api_variants GET    /api/variants(.:format)                                                             spree/api/variants#index {:format=>"json"}
#                                                             POST   /api/variants(.:format)                                                             spree/api/variants#create {:format=>"json"}
#                                             new_api_variant GET    /api/variants/new(.:format)                                                         spree/api/variants#new {:format=>"json"}
#                                            edit_api_variant GET    /api/variants/:id/edit(.:format)                                                    spree/api/variants#edit {:format=>"json"}
#                                                 api_variant GET    /api/variants/:id(.:format)                                                         spree/api/variants#show {:format=>"json"}
#                                                             PATCH  /api/variants/:id(.:format)                                                         spree/api/variants#update {:format=>"json"}
#                                                             PUT    /api/variants/:id(.:format)                                                         spree/api/variants#update {:format=>"json"}
#                                                             DELETE /api/variants/:id(.:format)                                                         spree/api/variants#destroy {:format=>"json"}
#                               api_option_type_option_values GET    /api/option_types/:option_type_id/option_values(.:format)                           spree/api/option_values#index {:format=>"json"}
#                                                             POST   /api/option_types/:option_type_id/option_values(.:format)                           spree/api/option_values#create {:format=>"json"}
#                            new_api_option_type_option_value GET    /api/option_types/:option_type_id/option_values/new(.:format)                       spree/api/option_values#new {:format=>"json"}
#                           edit_api_option_type_option_value GET    /api/option_types/:option_type_id/option_values/:id/edit(.:format)                  spree/api/option_values#edit {:format=>"json"}
#                                api_option_type_option_value GET    /api/option_types/:option_type_id/option_values/:id(.:format)                       spree/api/option_values#show {:format=>"json"}
#                                                             PATCH  /api/option_types/:option_type_id/option_values/:id(.:format)                       spree/api/option_values#update {:format=>"json"}
#                                                             PUT    /api/option_types/:option_type_id/option_values/:id(.:format)                       spree/api/option_values#update {:format=>"json"}
#                                                             DELETE /api/option_types/:option_type_id/option_values/:id(.:format)                       spree/api/option_values#destroy {:format=>"json"}
#                                            api_option_types GET    /api/option_types(.:format)                                                         spree/api/option_types#index {:format=>"json"}
#                                                             POST   /api/option_types(.:format)                                                         spree/api/option_types#create {:format=>"json"}
#                                         new_api_option_type GET    /api/option_types/new(.:format)                                                     spree/api/option_types#new {:format=>"json"}
#                                        edit_api_option_type GET    /api/option_types/:id/edit(.:format)                                                spree/api/option_types#edit {:format=>"json"}
#                                             api_option_type GET    /api/option_types/:id(.:format)                                                     spree/api/option_types#show {:format=>"json"}
#                                                             PATCH  /api/option_types/:id(.:format)                                                     spree/api/option_types#update {:format=>"json"}
#                                                             PUT    /api/option_types/:id(.:format)                                                     spree/api/option_types#update {:format=>"json"}
#                                                             DELETE /api/option_types/:id(.:format)                                                     spree/api/option_types#destroy {:format=>"json"}
#                                           api_option_values GET    /api/option_values(.:format)                                                        spree/api/option_values#index {:format=>"json"}
#                                                             POST   /api/option_values(.:format)                                                        spree/api/option_values#create {:format=>"json"}
#                                        new_api_option_value GET    /api/option_values/new(.:format)                                                    spree/api/option_values#new {:format=>"json"}
#                                       edit_api_option_value GET    /api/option_values/:id/edit(.:format)                                               spree/api/option_values#edit {:format=>"json"}
#                                            api_option_value GET    /api/option_values/:id(.:format)                                                    spree/api/option_values#show {:format=>"json"}
#                                                             PATCH  /api/option_values/:id(.:format)                                                    spree/api/option_values#update {:format=>"json"}
#                                                             PUT    /api/option_values/:id(.:format)                                                    spree/api/option_values#update {:format=>"json"}
#                                                             DELETE /api/option_values/:id(.:format)                                                    spree/api/option_values#destroy {:format=>"json"}
#                                                             GET    /api/option_values(.:format)                                                        spree/api/option_values#index {:format=>"json"}
#                                               api_my_orders GET    /api/orders/mine(.:format)                                                          spree/api/orders#mine {:format=>"json"}
#                                           api_current_order GET    /api/orders/current(.:format)                                                       spree/api/orders#current {:format=>"json"}
#                                            cancel_api_order PUT    /api/orders/:id/cancel(.:format)                                                    spree/api/orders#cancel {:format=>"json"}
#                                             empty_api_order PUT    /api/orders/:id/empty(.:format)                                                     spree/api/orders#empty {:format=>"json"}
#                                 apply_coupon_code_api_order PUT    /api/orders/:id/apply_coupon_code(.:format)                                         spree/api/orders#apply_coupon_code {:format=>"json"}
#                                        api_order_line_items GET    /api/orders/:order_id/line_items(.:format)                                          spree/api/line_items#index {:format=>"json"}
#                                                             POST   /api/orders/:order_id/line_items(.:format)                                          spree/api/line_items#create {:format=>"json"}
#                                     new_api_order_line_item GET    /api/orders/:order_id/line_items/new(.:format)                                      spree/api/line_items#new {:format=>"json"}
#                                    edit_api_order_line_item GET    /api/orders/:order_id/line_items/:id/edit(.:format)                                 spree/api/line_items#edit {:format=>"json"}
#                                         api_order_line_item GET    /api/orders/:order_id/line_items/:id(.:format)                                      spree/api/line_items#show {:format=>"json"}
#                                                             PATCH  /api/orders/:order_id/line_items/:id(.:format)                                      spree/api/line_items#update {:format=>"json"}
#                                                             PUT    /api/orders/:order_id/line_items/:id(.:format)                                      spree/api/line_items#update {:format=>"json"}
#                                                             DELETE /api/orders/:order_id/line_items/:id(.:format)                                      spree/api/line_items#destroy {:format=>"json"}
#                                 authorize_api_order_payment PUT    /api/orders/:order_id/payments/:id/authorize(.:format)                              spree/api/payments#authorize {:format=>"json"}
#                                   capture_api_order_payment PUT    /api/orders/:order_id/payments/:id/capture(.:format)                                spree/api/payments#capture {:format=>"json"}
#                                  purchase_api_order_payment PUT    /api/orders/:order_id/payments/:id/purchase(.:format)                               spree/api/payments#purchase {:format=>"json"}
#                                      void_api_order_payment PUT    /api/orders/:order_id/payments/:id/void(.:format)                                   spree/api/payments#void {:format=>"json"}
#                                    credit_api_order_payment PUT    /api/orders/:order_id/payments/:id/credit(.:format)                                 spree/api/payments#credit {:format=>"json"}
#                                          api_order_payments GET    /api/orders/:order_id/payments(.:format)                                            spree/api/payments#index {:format=>"json"}
#                                                             POST   /api/orders/:order_id/payments(.:format)                                            spree/api/payments#create {:format=>"json"}
#                                       new_api_order_payment GET    /api/orders/:order_id/payments/new(.:format)                                        spree/api/payments#new {:format=>"json"}
#                                      edit_api_order_payment GET    /api/orders/:order_id/payments/:id/edit(.:format)                                   spree/api/payments#edit {:format=>"json"}
#                                           api_order_payment GET    /api/orders/:order_id/payments/:id(.:format)                                        spree/api/payments#show {:format=>"json"}
#                                                             PATCH  /api/orders/:order_id/payments/:id(.:format)                                        spree/api/payments#update {:format=>"json"}
#                                                             PUT    /api/orders/:order_id/payments/:id(.:format)                                        spree/api/payments#update {:format=>"json"}
#                                                             DELETE /api/orders/:order_id/payments/:id(.:format)                                        spree/api/payments#destroy {:format=>"json"}
#                                           api_order_address GET    /api/orders/:order_id/addresses/:id(.:format)                                       spree/api/addresses#show {:format=>"json"}
#                                                             PATCH  /api/orders/:order_id/addresses/:id(.:format)                                       spree/api/addresses#update {:format=>"json"}
#                                                             PUT    /api/orders/:order_id/addresses/:id(.:format)                                       spree/api/addresses#update {:format=>"json"}
#                          add_api_order_return_authorization PUT    /api/orders/:order_id/return_authorizations/:id/add(.:format)                       spree/api/return_authorizations#add {:format=>"json"}
#                       cancel_api_order_return_authorization PUT    /api/orders/:order_id/return_authorizations/:id/cancel(.:format)                    spree/api/return_authorizations#cancel {:format=>"json"}
#                      receive_api_order_return_authorization PUT    /api/orders/:order_id/return_authorizations/:id/receive(.:format)                   spree/api/return_authorizations#receive {:format=>"json"}
#                             api_order_return_authorizations GET    /api/orders/:order_id/return_authorizations(.:format)                               spree/api/return_authorizations#index {:format=>"json"}
#                                                             POST   /api/orders/:order_id/return_authorizations(.:format)                               spree/api/return_authorizations#create {:format=>"json"}
#                          new_api_order_return_authorization GET    /api/orders/:order_id/return_authorizations/new(.:format)                           spree/api/return_authorizations#new {:format=>"json"}
#                         edit_api_order_return_authorization GET    /api/orders/:order_id/return_authorizations/:id/edit(.:format)                      spree/api/return_authorizations#edit {:format=>"json"}
#                              api_order_return_authorization GET    /api/orders/:order_id/return_authorizations/:id(.:format)                           spree/api/return_authorizations#show {:format=>"json"}
#                                                             PATCH  /api/orders/:order_id/return_authorizations/:id(.:format)                           spree/api/return_authorizations#update {:format=>"json"}
#                                                             PUT    /api/orders/:order_id/return_authorizations/:id(.:format)                           spree/api/return_authorizations#update {:format=>"json"}
#                                                             DELETE /api/orders/:order_id/return_authorizations/:id(.:format)                           spree/api/return_authorizations#destroy {:format=>"json"}
#                                                  api_orders GET    /api/orders(.:format)                                                               spree/api/orders#index {:format=>"json"}
#                                                             POST   /api/orders(.:format)                                                               spree/api/orders#create {:format=>"json"}
#                                               new_api_order GET    /api/orders/new(.:format)                                                           spree/api/orders#new {:format=>"json"}
#                                              edit_api_order GET    /api/orders/:id/edit(.:format)                                                      spree/api/orders#edit {:format=>"json"}
#                                                   api_order GET    /api/orders/:id(.:format)                                                           spree/api/orders#show {:format=>"json"}
#                                                             PATCH  /api/orders/:id(.:format)                                                           spree/api/orders#update {:format=>"json"}
#                                                             PUT    /api/orders/:id(.:format)                                                           spree/api/orders#update {:format=>"json"}
#                                                             DELETE /api/orders/:id(.:format)                                                           spree/api/orders#destroy {:format=>"json"}
#                                                   api_zones GET    /api/zones(.:format)                                                                spree/api/zones#index {:format=>"json"}
#                                                             POST   /api/zones(.:format)                                                                spree/api/zones#create {:format=>"json"}
#                                                new_api_zone GET    /api/zones/new(.:format)                                                            spree/api/zones#new {:format=>"json"}
#                                               edit_api_zone GET    /api/zones/:id/edit(.:format)                                                       spree/api/zones#edit {:format=>"json"}
#                                                    api_zone GET    /api/zones/:id(.:format)                                                            spree/api/zones#show {:format=>"json"}
#                                                             PATCH  /api/zones/:id(.:format)                                                            spree/api/zones#update {:format=>"json"}
#                                                             PUT    /api/zones/:id(.:format)                                                            spree/api/zones#update {:format=>"json"}
#                                                             DELETE /api/zones/:id(.:format)                                                            spree/api/zones#destroy {:format=>"json"}
#                                          api_country_states GET    /api/countries/:country_id/states(.:format)                                         spree/api/states#index {:format=>"json"}
#                                           api_country_state GET    /api/countries/:country_id/states/:id(.:format)                                     spree/api/states#show {:format=>"json"}
#                                               api_countries GET    /api/countries(.:format)                                                            spree/api/countries#index {:format=>"json"}
#                                                 api_country GET    /api/countries/:id(.:format)                                                        spree/api/countries#show {:format=>"json"}
#                          transfer_to_location_api_shipments POST   /api/shipments/transfer_to_location(.:format)                                       spree/api/shipments#transfer_to_location {:format=>"json"}
#                          transfer_to_shipment_api_shipments POST   /api/shipments/transfer_to_shipment(.:format)                                       spree/api/shipments#transfer_to_shipment {:format=>"json"}
#                                          mine_api_shipments GET    /api/shipments/mine(.:format)                                                       spree/api/shipments#mine {:format=>"json"}
#                                          ready_api_shipment PUT    /api/shipments/:id/ready(.:format)                                                  spree/api/shipments#ready {:format=>"json"}
#                                           ship_api_shipment PUT    /api/shipments/:id/ship(.:format)                                                   spree/api/shipments#ship {:format=>"json"}
#                                            add_api_shipment PUT    /api/shipments/:id/add(.:format)                                                    spree/api/shipments#add {:format=>"json"}
#                                         remove_api_shipment PUT    /api/shipments/:id/remove(.:format)                                                 spree/api/shipments#remove {:format=>"json"}
#                                               api_shipments POST   /api/shipments(.:format)                                                            spree/api/shipments#create {:format=>"json"}
#                                                api_shipment PATCH  /api/shipments/:id(.:format)                                                        spree/api/shipments#update {:format=>"json"}
#                                                             PUT    /api/shipments/:id(.:format)                                                        spree/api/shipments#update {:format=>"json"}
#                                                  api_states GET    /api/states(.:format)                                                               spree/api/states#index {:format=>"json"}
#                                                   api_state GET    /api/states/:id(.:format)                                                           spree/api/states#show {:format=>"json"}
#                                         jstree_api_taxonomy GET    /api/taxonomies/:id/jstree(.:format)                                                spree/api/taxonomies#jstree {:format=>"json"}
#                                   jstree_api_taxonomy_taxon GET    /api/taxonomies/:taxonomy_id/taxons/:id/jstree(.:format)                            spree/api/taxons#jstree {:format=>"json"}
#                                         api_taxonomy_taxons GET    /api/taxonomies/:taxonomy_id/taxons(.:format)                                       spree/api/taxons#index {:format=>"json"}
#                                                             POST   /api/taxonomies/:taxonomy_id/taxons(.:format)                                       spree/api/taxons#create {:format=>"json"}
#                                      new_api_taxonomy_taxon GET    /api/taxonomies/:taxonomy_id/taxons/new(.:format)                                   spree/api/taxons#new {:format=>"json"}
#                                     edit_api_taxonomy_taxon GET    /api/taxonomies/:taxonomy_id/taxons/:id/edit(.:format)                              spree/api/taxons#edit {:format=>"json"}
#                                          api_taxonomy_taxon GET    /api/taxonomies/:taxonomy_id/taxons/:id(.:format)                                   spree/api/taxons#show {:format=>"json"}
#                                                             PATCH  /api/taxonomies/:taxonomy_id/taxons/:id(.:format)                                   spree/api/taxons#update {:format=>"json"}
#                                                             PUT    /api/taxonomies/:taxonomy_id/taxons/:id(.:format)                                   spree/api/taxons#update {:format=>"json"}
#                                                             DELETE /api/taxonomies/:taxonomy_id/taxons/:id(.:format)                                   spree/api/taxons#destroy {:format=>"json"}
#                                              api_taxonomies GET    /api/taxonomies(.:format)                                                           spree/api/taxonomies#index {:format=>"json"}
#                                                             POST   /api/taxonomies(.:format)                                                           spree/api/taxonomies#create {:format=>"json"}
#                                            new_api_taxonomy GET    /api/taxonomies/new(.:format)                                                       spree/api/taxonomies#new {:format=>"json"}
#                                           edit_api_taxonomy GET    /api/taxonomies/:id/edit(.:format)                                                  spree/api/taxonomies#edit {:format=>"json"}
#                                                api_taxonomy GET    /api/taxonomies/:id(.:format)                                                       spree/api/taxonomies#show {:format=>"json"}
#                                                             PATCH  /api/taxonomies/:id(.:format)                                                       spree/api/taxonomies#update {:format=>"json"}
#                                                             PUT    /api/taxonomies/:id(.:format)                                                       spree/api/taxonomies#update {:format=>"json"}
#                                                             DELETE /api/taxonomies/:id(.:format)                                                       spree/api/taxonomies#destroy {:format=>"json"}
#                                                  api_taxons GET    /api/taxons(.:format)                                                               spree/api/taxons#index {:format=>"json"}
#                                          api_inventory_unit GET    /api/inventory_units/:id(.:format)                                                  spree/api/inventory_units#show {:format=>"json"}
#                                                             PATCH  /api/inventory_units/:id(.:format)                                                  spree/api/inventory_units#update {:format=>"json"}
#                                                             PUT    /api/inventory_units/:id(.:format)                                                  spree/api/inventory_units#update {:format=>"json"}
#                                       api_user_credit_cards GET    /api/users/:user_id/credit_cards(.:format)                                          spree/api/credit_cards#index {:format=>"json"}
#                                       api_user_address_book GET    /api/users/:user_id/address_book(.:format)                                          spree/api/address_books#show {:format=>"json"}
#                                                             PATCH  /api/users/:user_id/address_book(.:format)                                          spree/api/address_books#update {:format=>"json"}
#                                                             PUT    /api/users/:user_id/address_book(.:format)                                          spree/api/address_books#update {:format=>"json"}
#                                                             DELETE /api/users/:user_id/address_book(.:format)                                          spree/api/address_books#destroy {:format=>"json"}
#                                                   api_users GET    /api/users(.:format)                                                                spree/api/users#index {:format=>"json"}
#                                                             POST   /api/users(.:format)                                                                spree/api/users#create {:format=>"json"}
#                                                new_api_user GET    /api/users/new(.:format)                                                            spree/api/users#new {:format=>"json"}
#                                               edit_api_user GET    /api/users/:id/edit(.:format)                                                       spree/api/users#edit {:format=>"json"}
#                                                    api_user GET    /api/users/:id(.:format)                                                            spree/api/users#show {:format=>"json"}
#                                                             PATCH  /api/users/:id(.:format)                                                            spree/api/users#update {:format=>"json"}
#                                                             PUT    /api/users/:id(.:format)                                                            spree/api/users#update {:format=>"json"}
#                                                             DELETE /api/users/:id(.:format)                                                            spree/api/users#destroy {:format=>"json"}
#                                             api_credit_card PATCH  /api/credit_cards/:id(.:format)                                                     spree/api/credit_cards#update {:format=>"json"}
#                                                             PUT    /api/credit_cards/:id(.:format)                                                     spree/api/credit_cards#update {:format=>"json"}
#                                              api_properties GET    /api/properties(.:format)                                                           spree/api/properties#index {:format=>"json"}
#                                                             POST   /api/properties(.:format)                                                           spree/api/properties#create {:format=>"json"}
#                                            new_api_property GET    /api/properties/new(.:format)                                                       spree/api/properties#new {:format=>"json"}
#                                           edit_api_property GET    /api/properties/:id/edit(.:format)                                                  spree/api/properties#edit {:format=>"json"}
#                                                api_property GET    /api/properties/:id(.:format)                                                       spree/api/properties#show {:format=>"json"}
#                                                             PATCH  /api/properties/:id(.:format)                                                       spree/api/properties#update {:format=>"json"}
#                                                             PUT    /api/properties/:id(.:format)                                                       spree/api/properties#update {:format=>"json"}
#                                                             DELETE /api/properties/:id(.:format)                                                       spree/api/properties#destroy {:format=>"json"}
#                          api_stock_location_stock_movements GET    /api/stock_locations/:stock_location_id/stock_movements(.:format)                   spree/api/stock_movements#index {:format=>"json"}
#                                                             POST   /api/stock_locations/:stock_location_id/stock_movements(.:format)                   spree/api/stock_movements#create {:format=>"json"}
#                       new_api_stock_location_stock_movement GET    /api/stock_locations/:stock_location_id/stock_movements/new(.:format)               spree/api/stock_movements#new {:format=>"json"}
#                      edit_api_stock_location_stock_movement GET    /api/stock_locations/:stock_location_id/stock_movements/:id/edit(.:format)          spree/api/stock_movements#edit {:format=>"json"}
#                           api_stock_location_stock_movement GET    /api/stock_locations/:stock_location_id/stock_movements/:id(.:format)               spree/api/stock_movements#show {:format=>"json"}
#                                                             PATCH  /api/stock_locations/:stock_location_id/stock_movements/:id(.:format)               spree/api/stock_movements#update {:format=>"json"}
#                                                             PUT    /api/stock_locations/:stock_location_id/stock_movements/:id(.:format)               spree/api/stock_movements#update {:format=>"json"}
#                                                             DELETE /api/stock_locations/:stock_location_id/stock_movements/:id(.:format)               spree/api/stock_movements#destroy {:format=>"json"}
#                              api_stock_location_stock_items GET    /api/stock_locations/:stock_location_id/stock_items(.:format)                       spree/api/stock_items#index {:format=>"json"}
#                                                             POST   /api/stock_locations/:stock_location_id/stock_items(.:format)                       spree/api/stock_items#create {:format=>"json"}
#                           new_api_stock_location_stock_item GET    /api/stock_locations/:stock_location_id/stock_items/new(.:format)                   spree/api/stock_items#new {:format=>"json"}
#                          edit_api_stock_location_stock_item GET    /api/stock_locations/:stock_location_id/stock_items/:id/edit(.:format)              spree/api/stock_items#edit {:format=>"json"}
#                               api_stock_location_stock_item GET    /api/stock_locations/:stock_location_id/stock_items/:id(.:format)                   spree/api/stock_items#show {:format=>"json"}
#                                                             PATCH  /api/stock_locations/:stock_location_id/stock_items/:id(.:format)                   spree/api/stock_items#update {:format=>"json"}
#                                                             PUT    /api/stock_locations/:stock_location_id/stock_items/:id(.:format)                   spree/api/stock_items#update {:format=>"json"}
#                                                             DELETE /api/stock_locations/:stock_location_id/stock_items/:id(.:format)                   spree/api/stock_items#destroy {:format=>"json"}
#                                         api_stock_locations GET    /api/stock_locations(.:format)                                                      spree/api/stock_locations#index {:format=>"json"}
#                                                             POST   /api/stock_locations(.:format)                                                      spree/api/stock_locations#create {:format=>"json"}
#                                      new_api_stock_location GET    /api/stock_locations/new(.:format)                                                  spree/api/stock_locations#new {:format=>"json"}
#                                     edit_api_stock_location GET    /api/stock_locations/:id/edit(.:format)                                             spree/api/stock_locations#edit {:format=>"json"}
#                                          api_stock_location GET    /api/stock_locations/:id(.:format)                                                  spree/api/stock_locations#show {:format=>"json"}
#                                                             PATCH  /api/stock_locations/:id(.:format)                                                  spree/api/stock_locations#update {:format=>"json"}
#                                                             PUT    /api/stock_locations/:id(.:format)                                                  spree/api/stock_locations#update {:format=>"json"}
#                                                             DELETE /api/stock_locations/:id(.:format)                                                  spree/api/stock_locations#destroy {:format=>"json"}
#                                             api_stock_items GET    /api/stock_items(.:format)                                                          spree/api/stock_items#index {:format=>"json"}
#                                              api_stock_item PATCH  /api/stock_items/:id(.:format)                                                      spree/api/stock_items#update {:format=>"json"}
#                                                             PUT    /api/stock_items/:id(.:format)                                                      spree/api/stock_items#update {:format=>"json"}
#                                                             DELETE /api/stock_items/:id(.:format)                                                      spree/api/stock_items#destroy {:format=>"json"}
#                                  receive_api_stock_transfer POST   /api/stock_transfers/:id/receive(.:format)                                          spree/api/stock_transfers#receive {:format=>"json"}
#                           api_stock_transfer_transfer_items POST   /api/stock_transfers/:stock_transfer_id/transfer_items(.:format)                    spree/api/transfer_items#create {:format=>"json"}
#                            api_stock_transfer_transfer_item PATCH  /api/stock_transfers/:stock_transfer_id/transfer_items/:id(.:format)                spree/api/transfer_items#update {:format=>"json"}
#                                                             PUT    /api/stock_transfers/:stock_transfer_id/transfer_items/:id(.:format)                spree/api/transfer_items#update {:format=>"json"}
#                                                             DELETE /api/stock_transfers/:stock_transfer_id/transfer_items/:id(.:format)                spree/api/transfer_items#destroy {:format=>"json"}
#                                                  api_stores GET    /api/stores(.:format)                                                               spree/api/stores#index {:format=>"json"}
#                                                             POST   /api/stores(.:format)                                                               spree/api/stores#create {:format=>"json"}
#                                               new_api_store GET    /api/stores/new(.:format)                                                           spree/api/stores#new {:format=>"json"}
#                                              edit_api_store GET    /api/stores/:id/edit(.:format)                                                      spree/api/stores#edit {:format=>"json"}
#                                                   api_store GET    /api/stores/:id(.:format)                                                           spree/api/stores#show {:format=>"json"}
#                                                             PATCH  /api/stores/:id(.:format)                                                           spree/api/stores#update {:format=>"json"}
#                                                             PUT    /api/stores/:id(.:format)                                                           spree/api/stores#update {:format=>"json"}
#                                                             DELETE /api/stores/:id(.:format)                                                           spree/api/stores#destroy {:format=>"json"}
#                                mine_api_store_credit_events GET    /api/store_credit_events/mine(.:format)                                             spree/api/store_credit_events#mine {:format=>"json"}
#                                            api_config_money GET    /api/config/money(.:format)                                                         spree/api/config#money {:format=>"json"}
#                                                  api_config GET    /api/config(.:format)                                                               spree/api/config#show {:format=>"json"}
#                                         api_classifications PUT    /api/classifications(.:format)                                                      spree/api/classifications#update {:format=>"json"}
#                                          api_taxon_products GET    /api/taxons/products(.:format)                                                      spree/api/taxons#products {:format=>"json"}
#
