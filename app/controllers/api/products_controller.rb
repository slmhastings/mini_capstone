class Api::ProductsController < ApplicationController
  
  def index
    @products = Product.all
    render 'index.json.jb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jb'
    @product.save
  end

  def create
    @recipe = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
    @recipe.save
    render 'create.json.jb'
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.price = params[:price]
    @product.image_url = params[:image_url]
    @product.description = params[:description]
    @product.save
    render 'update.json.jb'
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "Product succesfully deleted!"}
  end
end
