class Admin::ProductsController < ApplicationController
  layout 'admin'

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  
  private

  def product_params
    params.require(:product).permit(:name,:description )
  end

end
