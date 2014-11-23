class FilterController < ApplicationController
  def sale
  	@products = Product.where(sale: true).page(params[:page]).per(8)
  end

  def new 
  	@products = Product.limit(5).reverse_order
  end
end
