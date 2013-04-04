class ProductsController < ApplicationController

	def index
		@product = Product.all
	end

  def show
  	@product = Product.find(params[:id])
  end

  def destroy
  	@product = Product.find(params[:id])
  	@product.destroy
  	flash[:notice] = "Product was successfully deleted."
  	redirect_to products_path
  end

  def search
  	@products = Product.find_all_by_name(params[:name])
  end
end
