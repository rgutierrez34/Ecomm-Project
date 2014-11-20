class FilterController < ApplicationController
  def sale
  	@products = Product.where(sale: true)
  end

  def new 
  	@products = Product.limit(10).reverse_order
  end
end
