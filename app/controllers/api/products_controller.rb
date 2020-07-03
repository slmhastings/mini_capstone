class Api::ProductsController < ApplicationController
  
  def index
    @products = Product.all
    render 'index.json.jb'
  end

  # def oneproduct
  #   @product = Product.first
  #   render 'oneproduct.json.jb'
  # end

  # def show_product
  #   @item = params['item']
  #   render 'product_shown.json.jb'
  # end
end
