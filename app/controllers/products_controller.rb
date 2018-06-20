class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to @product
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @product = Product.find(params[:id]).destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def product_params
    params.require(:product).permit(:name,:description )
  end

end
