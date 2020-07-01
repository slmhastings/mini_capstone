class Api::ProductsController < ApplicationController
  
  def all
    @products = Product.all
    render 'product_info.json.jb'
  end

  def first_product
    @product = Product.first
end
